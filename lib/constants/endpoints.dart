final class Endpoints {
  static final Endpoints instance = Endpoints();

  //Auth
  final String logInCustomer = "/auth/log-in-customer";
  final String logInRestaurant = "/auth/log-in-restaurant";
  final String forgotPasswordCustomer = "/auth/forgot-password-customer";
  final String forgotPasswordRestaurant = "/auth/forgot-password-restaurant";
  final String mailVerificationRequest = "/auth/mail-verification-request";
  final String mailVerification = "/auth/mail-verification";
  final String signUpCustomer = "/auth/sign-up-customer";
  final String signUpRestaurant = "/auth/sign-up-restaurant";

  //Menu
  final String getRestaurantMenu = "/menu/get-restaurant-menu";
  final String getSimilarFoods = "/menu/get-similar-foods";
  final String createMenu = "/menu/create-menu";
  final String editMenu = "/menu/edit-menu";
  final String cancelCampaign = "/menu/cancel-campaign";
  final String addDiscount = "/menu/add-discount";
  final String deleteMenu = "/menu/delete-menu";
  final String writeComment = "/menu/new-comment";
  final String isMenuAvailable = "/menu/is-menu-available";
  final String getMenu = "/menu/get-menu";

  //Advertisement
  final String getBoost = "/advertisement/get-new-advertisement";
  final String activeBoosts = "/advertisement/get-restaurant-ads";

  //Flow
  final String getAdvertedMenus = "/flow/adverted-menu";
  final String getMoreAdvertedMenus = "/flow/more-adverted-menu";
  final String discover = "/flow/discover";
  final String getMoreDiscover = "/flow/more-discover";

  //Search
  final String search = "/search";
  final String getSearchAds = "/search/get-search-ads";

  //Address
  final String mapTile = "https://tile.openstreetmap.org/{z}/{x}/{y}.png";
  final String createAddress = "/address/create";
  final String editAddress = "/address/edit";
  final String getUserAddresses = "/address/get-user-addresses";
  final String deleteAddress = "/address/delete-address";

  //Order
  final String isRestaurantUsesHe = "/order/is-restaurants-uses-he";
  final String createOrder = "/order/create-order";
  final String getActiveOrdersRestaurant = "/order/restaurant-active-orders";
  final String getOrderLogsRestaurant = "/order/restaurant-order-logs";
  final String getOrderLogsCustomer = "/order/customer-order-logs";
  final String updateOrderState = "/order/update-order-state";
  final String cancelOrder = "/order/cancel-order";
  final String getActiveOrdersCustomer = "/order/customer-active-orders";

  //Customer
  final String deleteAccount = "/customer/delete-account";
  final String change = "/customer/change";

  //Restaurant
  final String getRestaurant = "/restaurant/get-restaurant";
  final String getRestaurantAllData = "/restaurant/get-restaurant-all-data";
  final String getRestaurantOldBillings =
      "/restaurant/get-restaurant-old-billings";
  final String getRestaurantWorkHours = "/restaurant/get-restaurant-work-hours";
  final String setRestaurantWorkHours = "/restaurant/set-work-hours";

  //Chat
  final String createChatRoom = "/chat/create-room";
  final String updateChatRoom = "/chat/update-room";
  final String closeChatRoom = "/chat/close-room";
}
