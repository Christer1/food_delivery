import 'package:flutter/material.dart';
import 'package:food_delivery/pages/auth/sign_in_page.dart';
import 'package:food_delivery/pages/cart/cart_page.dart';
import 'package:food_delivery/pages/food/popular_food_detail.dart';
import 'package:food_delivery/pages/food/recommended_food_detail.dart';
import 'package:food_delivery/pages/home/home_page.dart';
import 'package:food_delivery/pages/home/main_food_page.dart';
import 'package:food_delivery/pages/splash/spash_screen.dart';
import 'package:get/get.dart';

class RouteHelper{
  static const String splashScreen = "/splash-screen";
  static const String initial = "/";
  static const String popularFood = "/popular-food";
  static const String recommendedFood = "/recommended-food";
  static const String cartPage = "/cart-page";
  static const String signIn = "/sign-in";

  static String getSplashScreen()=> '$splashScreen';
  static String getInitial()=> '$initial';
  static String getPopularFood(int pageId, String page)=>'$popularFood?pageId=$pageId&page=$page';
  static String getRecommendedFood(int pageId, String page)=>'$recommendedFood?pageId=$pageId&page=$page';
  static String getCartPage()=>'$cartPage';
  static String getSignInPage()=>'$signIn';

  static List<GetPage> routes = [

    GetPage(name: splashScreen, page: () => SplashScreen()),
    GetPage(name: initial, page: () => HomePage()),
    GetPage(name: signIn, page: () => SignInPage(), transition: Transition.fade),

    GetPage(name: popularFood, 
    transition: Transition.fadeIn, 
    page: () {
       var pageId = Get.parameters['pageId']; 
       var page = Get.parameters['page']; 
       return PopularFoodDetail(pageId:int.parse(pageId!), page: page!);
      }
    ),

    GetPage(name: recommendedFood, 
    transition: Transition.fadeIn, 
    page: (){
       var pageId = Get.parameters['pageId']; 
       var page = Get.parameters['page']; 
      return RecommendedFoodDetail(pageId: int.parse(pageId!), page: page!);
    } ),

    GetPage(name: cartPage, page: () {
      return CartPage();
    },
    transition: Transition.fadeIn
     ),
    
  ];

}