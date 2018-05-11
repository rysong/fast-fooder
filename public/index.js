/* global Vue, VueRouter, axios, heroMap rating simpleMap*/

var HomePage = {
  template: "#home-page",
  data: function() {
    return {
      message: "Welcome to Fast Fooder!",
      restaurants: [],
      nameFilter: ""
    };
  },
  created: function() {
    axios.get("/v1/restaurants").then(
      function(response) {
        this.restaurants = response.data;
      }.bind(this)
    );
  },
  mounted: function() {
    var optimizedDatabaseLoading = 0;
    var _latitude = 40.7344458;
    var _longitude = -73.86704922;
    var element = "map-homepage";
    var markerTarget = "modal"; // use "sidebar", "infobox" or "modal" - defines the action after click on marker
    var sidebarResultTarget = "modal"; // use "sidebar", "modal" or "new_page" - defines the action after click on marker
    var showMarkerLabels = false; // next to every marker will be a bubble with title
    var mapDefaultZoom = 14; // default zoom
    heroMap(
      _latitude,
      _longitude,
      element,
      markerTarget,
      sidebarResultTarget,
      showMarkerLabels,
      mapDefaultZoom
    );
  },
  methods: {
    isValidRestaurant: function(restaurant) {
      var lowerRestaurantName = restaurant.name.toLowerCase();
      var lowerNameFilter = this.nameFilter.toLowerCase();
      return lowerRestaurantName.includes(lowerNameFilter);
    }
  },
  computed: {}
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
      googleInfo: {}
    };
  },
  created: function() {
    axios.get("v1/restaurants/" + this.$route.params.id).then(
      function(response) {
        this.restaurant = response.data;
        // this.reviews = response.data.reviews; get reviews from database
        this.meals = response.data.meals;

        Vue.nextTick(
          function() {
            console.log("data is ready");
            console.log(
              $(".owl-carousel"),
              $(".owl-carousel").data("owlCarousel")
            );
          }.bind(this)
        );
      }.bind(this)
    );

    axios.get("v1/googlerestaurants/" + this.$route.params.id).then(
      function(response) {
        this.googleInfo = response.data;
        this.reviews = response.data.reviews;

        rating(".visitor-rating");
        var _latitude = this.googleInfo.geometry.location.lat;
        var _longitude = this.googleInfo.geometry.location.lng;
        var element = "map-detail";
        simpleMap(_latitude, _longitude, element);
      }.bind(this)
    );
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
