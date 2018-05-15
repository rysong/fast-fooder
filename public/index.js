/* global Vue, VueRouter, axios, heroMap rating simpleMap, google, bgTransfer*/

var HomePage = {
  template: "#home-page",
  data: function() {
    return {
      message: "Welcome to Fast Fooder!",
      restaurants: [],
      restaurantCoordinates: [],
      nameFilter: "",
      randomRestaurant: {},
      randomMeal: "",
      map: null
    };
  },
  created: function() {
    axios.get("/v1/restaurants").then(
      function(response) {
        this.restaurants = response.data;

        Vue.nextTick(function() {
          bgTransfer();
        });

        var map = this.map;
        var geocoder = new google.maps.Geocoder();
        this.restaurants.forEach(
          function(restaurant) {
            geocoder.geocode({ address: restaurant.address }, function(
              results,
              status
            ) {
              console.log("geocode", restaurant.address, results, status);
              if (status === "OK") {
                map.setCenter(results[0].geometry.location);
                var marker = new google.maps.Marker({
                  map: map,
                  position: results[0].geometry.location
                });

                var infowindow = new google.maps.InfoWindow({
                  content: restaurant.name
                });

                marker.addListener("click", function() {
                  infowindow.open(map, marker);
                });
                restaurant.marker = marker;
              } else {
                alert(
                  "Geocode was not successful for the following reason: " +
                    status
                );
              }
            });
          }.bind(this)
        );
      }.bind(this)
    );
  },
  mounted: function() {
    var optimizedDatabaseLoading = 0;
    var _latitude = 41.892156;
    var _longitude = -87.634794;
    var element = "map-homepage";
    var markerTarget = "modal"; // use "sidebar", "infobox" or "modal" - defines the action after click on marker
    var sidebarResultTarget = "modal"; // use "sidebar", "modal" or "new_page" - defines the action after click on marker
    var showMarkerLabels = false; // next to every marker will be a bubble with title
    var mapDefaultZoom = 14; // default zoom
    // heroMap(
    //   _latitude,
    //   _longitude,
    //   element,
    //   markerTarget,
    //   sidebarResultTarget,
    //   showMarkerLabels,
    //   mapDefaultZoom
    // );

    this.map = new google.maps.Map(document.getElementById(element), {
      center: { lat: _latitude, lng: _longitude },
      zoom: 14,
      mapTypeId: "roadmap",
      styles: [
        {
          featureType: "administrative",
          elementType: "labels.text.fill",
          stylers: [{ color: "#c6c6c6" }]
        },
        {
          featureType: "landscape",
          elementType: "all",
          stylers: [{ color: "#f2f2f2" }]
        },
        {
          featureType: "poi",
          elementType: "all",
          stylers: [{ visibility: "off" }]
        },
        {
          featureType: "road",
          elementType: "all",
          stylers: [{ saturation: -100 }, { lightness: 45 }]
        },
        {
          featureType: "road.highway",
          elementType: "all",
          stylers: [{ visibility: "simplified" }]
        },
        {
          featureType: "road.highway",
          elementType: "geometry.fill",
          stylers: [{ color: "#ffffff" }]
        },
        {
          featureType: "road.arterial",
          elementType: "labels.icon",
          stylers: [{ visibility: "off" }]
        },
        {
          featureType: "transit",
          elementType: "all",
          stylers: [{ visibility: "off" }]
        },
        {
          featureType: "water",
          elementType: "all",
          stylers: [{ color: "#dde6e8" }, { visibility: "on" }]
        }
      ]
    });
  },

  methods: {
    isValidRestaurant: function(restaurant) {
      var lowerRestaurantName = restaurant.name.toLowerCase();
      var lowerNameFilter = this.nameFilter.toLowerCase();
      return lowerRestaurantName.includes(lowerNameFilter);
    },
    randomSelector: function() {
      var randomRestaurantIndex = Math.floor(
        Math.random() * this.restaurants.length
      );
      this.randomRestaurant = this.restaurants[randomRestaurantIndex];

      var mealOptions = this.randomRestaurant.meals;
      var randomMealIndex = Math.floor(Math.random() * mealOptions.length);
      this.randomMeal = mealOptions[randomMealIndex];
    }
    // sortedRestaurants: function() {
    //   return this.restaurants.sort(function(restaurant1, restaurant2) {
    //     return restaurant1.speed_of_service - restaurant2.speed_of_service;
    //   });
    // }
  },
  computed: {
    filteredRestaurants: function() {
      return this.restaurants.filter(
        function(restaurant) {
          var lowerRestaurantName = restaurant.name.toLowerCase();
          var lowerNameFilter = this.nameFilter.toLowerCase();
          var visible = lowerRestaurantName.includes(lowerNameFilter);
          // restaurant.marker.setVisible(visible);
          return visible;
        }.bind(this)
      );
    }
  }
};

var TestPage = {
  template: "#test"
};

var SignupPage = {
  template: "#signup-page",
  data: function() {
    return {
      name: "",
      email: "",
      password: "",
      passwordConfirmation: "",
      errors: []
    };
  },
  methods: {
    submit: function() {
      var params = {
        name: this.name,
        email: this.email,
        password: this.password,
        password_confirmation: this.passwordConfirmation
      };
      axios
        .post("/v1/users", params)
        .then(function(response) {
          router.push("/login");
        })
        .catch(
          function(error) {
            this.errors = error.response.data.errors;
          }.bind(this)
        );
    }
  }
};

var LoginPage = {
  template: "#login-page",
  data: function() {
    return {
      email: "",
      password: "",
      errors: []
    };
  },
  methods: {
    submit: function() {
      var params = {
        auth: { email: this.email, password: this.password }
      };
      axios
        .post("/user_token", params)
        .then(function(response) {
          axios.defaults.headers.common["Authorization"] =
            "Bearer " + response.data.jwt;
          localStorage.setItem("jwt", response.data.jwt);
          router.push("/");
        })
        .catch(
          function(error) {
            this.errors = ["Invalid email or password."];
            this.email = "";
            this.password = "";
          }.bind(this)
        );
    }
  }
};

var LogoutPage = {
  template: "<h1>Logout</h1>",
  created: function() {
    axios.defaults.headers.common["Authorization"] = undefined;
    localStorage.removeItem("jwt");
    router.push("/");
  }
};

var ReviewsNewPage = {
  template: "#reviews-new-page",
  data: function() {
    return {
      value: "",
      text: "",
      errors: []
    };
  },
  methods: {
    submit: function() {
      var params = {
        value: this.value,
        text: this.text,
        restaurant_id: this.$route.params.id
      };
      axios
        .post("/v1/reviews", params)
        .then(function(response) {
          console.log(response);
          router.push("/restaurants/" + params.restaurant_id);
        })
        .catch(
          function(error) {
            this.errors = error.response.data.errors;
          }.bind(this)
        );
    }
  }
};

var RestaurantsShowPage = {
  template: "#restaurants-show-page",
  data: function() {
    return {
      restaurant: {},
      reviews: [],
      meals: [],
      errors: [],
      wikiInfo: {},
      googleInfo: {},
      travelDistance: "",
      travelDuration: ""
    };
  },
  created: function() {
    axios.get("v1/restaurants/" + this.$route.params.id).then(
      function(response) {
        this.restaurant = response.data;
        // this.reviews = response.data.reviews; get reviews from database
        this.meals = response.data.meals;

        Vue.nextTick(function() {
          bgTransfer();
        });
      }.bind(this)
    );

    axios.get("v1/googlerestaurants/" + this.$route.params.id).then(
      function(response) {
        this.googleInfo = response.data.main;
        this.reviews = response.data.main.reviews;

        //theme map
        // rating(".visitor-rating");
        // var _latitude = this.googleInfo.geometry.location.lat;
        // var _longitude = this.googleInfo.geometry.location.lng;
        // var element = "map-detail";
        // simpleMap(_latitude, _longitude, element);

        //shows google map with route between two places
        var directionsService = new google.maps.DirectionsService();
        var directionsDisplay = new google.maps.DirectionsRenderer();
        var place = new google.maps.LatLng(
          this.googleInfo.geometry.location.lat,
          this.googleInfo.geometry.location.lng
        );
        var start = new google.maps.LatLng(41.892156, -87.634794); //Actualize coordinates
        var mapOptions = {
          zoom: 14,
          center: place
        };
        var map = new google.maps.Map(
          document.getElementById("map"),
          mapOptions
        );
        directionsDisplay.setMap(map);

        var request = {
          origin: start,
          destination: place,
          travelMode: google.maps.TravelMode["DRIVING"]
        };
        directionsService.route(request, function(response, status) {
          if (status === "OK") {
            directionsDisplay.setDirections(response);
          }
        });

        //Time and Miles from my location to restuarant
        var origin1 = new google.maps.LatLng(41.892156, -87.634794);
        var destinationA = new google.maps.LatLng(
          this.googleInfo.geometry.location.lat,
          this.googleInfo.geometry.location.lng
        );
        var service = new google.maps.DistanceMatrixService();
        service.getDistanceMatrix(
          {
            origins: [origin1],
            destinations: [destinationA],
            unitSystem: google.maps.UnitSystem.IMPERIAL,
            travelMode: "DRIVING"
          },
          callback
        );
        function callback(response, status) {
          // See Parsing the Results for
          // the basics of a callback function.
          console.log("callback finished", response, status);
          console.log(
            "Useful Info",
            response.rows[0].elements[0].distance.text,
            response.rows[0].elements[0].duration.text
          );
          this.travelDistance = response.rows[0].elements[0].distance.text;
          this.travelDuration = response.rows[0].elements[0].duration.text;
        }
      }.bind(this)
    );

    axios.get("v1/wikirestaurants/" + this.$route.params.id).then(
      function(response) {
        this.wikiInfo = response.data;
      }.bind(this)
    );

    // attempt to get pictures!!!!
    // var request = {
    //   placeId: "ChIJN1t_tDeuEmsRUsoyG83frY4"
    // };
    // service = new google.maps.places.PlacesService(map);
    // this.photoArray = service.getDetails(request);
    // console.log("hello", this.photoArray);
  },

  mounted: function() {},

  methods: {
    submit: function(meal) {
      var params = {
        meal_id: meal.id,
        text: meal.new_user_meal_text,
        restaurant_id: this.$route.params.id
      };
      axios
        .post("/v1/user_meals", params)
        .then(
          function(response) {
            meal.user_meals.push(response.data);
            meal.new_user_meal_text = "";
          }.bind(this)
        )
        .catch(
          function(error) {
            this.errors = error.response.data.errors;
          }.bind(this)
        );
    },
    upvote: function(meal) {
      axios
        .post("/v1/meals/" + meal.id)
        .then(function(response) {
          meal.upvotes += 1;
        })
        .catch(
          function(error) {
            this.errors = error.response.data.errors;
          }.bind(this)
        );
    }
  },
  computed: {
    topMeals: function() {
      return this.meals
        .sort(function(meal1, meal2) {
          return meal2.upvotes - meal1.upvotes;
        })
        .slice(0, 3);
    }
  }
};

var router = new VueRouter({
  routes: [
    { path: "/", component: HomePage },
    { path: "/test", component: TestPage },
    { path: "/signup", component: SignupPage },
    { path: "/login", component: LoginPage },
    { path: "/logout", component: LogoutPage },
    { path: "/reviews/new/:id", component: ReviewsNewPage },
    { path: "/restaurants/:id", component: RestaurantsShowPage }
  ],
  scrollBehavior: function(to, from, savedPosition) {
    return { x: 0, y: 0 };
  }
});

var app = new Vue({
  el: "#vue-app",
  router: router,
  created: function() {
    var jwt = localStorage.getItem("jwt");
    if (jwt) {
      axios.defaults.headers.common["Authorization"] = jwt;
    }
  },
  watch: {
    $route: function() {
      window.location.reload();
    }
  }
});
