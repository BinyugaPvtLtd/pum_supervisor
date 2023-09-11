// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:pheonix_mechano_native/android_screens/presentation/screens/authentication/forgot_screen/forgotpass_supervisor_screen.dart';
// import 'package:pheonix_mechano_native/android_screens/presentation/screens/authentication/login_screen/login_supervisor.dart';
// import 'package:pheonix_mechano_native/android_screens/resources/string_manager.dart';
// import '../../web_screens/admin_panel/presentation/dashbord_screen/dashbord_screen.dart';
// import '../../web_screens/admin_panel/presentation/user management/user_management_screen.dart';
//
//
// class Routes{
//   static const String LogIn = "/";
//   static const String HomeScreen = "/HomeScreen";
//   static const String forgetPassword = "/ForgotPasswordScreen";
//   static const String userManagemntscreen = "/UserManagemntscreen";
//   static const String dashbordScreenview = "/DashbordScreenview";
//
// }
//
// class RouteGenerator{
//   static Route<dynamic> getRoute(RouteSettings routeSettings){
//     switch(routeSettings.name){
//       case Routes.LogIn:
//         return MaterialPageRoute(builder: (_)=> LoginScreenAndroid());
//       // case Routes.HomeScreen:
//       //   return MaterialPageRoute(builder: (_)=> HomeScreen(email: '',));
//       case Routes.forgetPassword:
//         return MaterialPageRoute(builder: (_)=> ForgotPasswordScreen());
//       case Routes.userManagemntscreen:
//         return MaterialPageRoute(builder: (_)=> UserManagemntscreen());
//       case Routes.dashbordScreenview:
//         return MaterialPageRoute(builder: (_)=>DashbordScreenview());
//
//
//       default:
//         return unDefineRoute();
//     }
//   }
//
//   static Route<dynamic> unDefineRoute(){
//     return MaterialPageRoute(builder: (_)=> Scaffold(
//       appBar: AppBar(title: Text(AppString.notFoundRoute),),
//       body: Center(child: Text(AppString.notFoundRoute),),
//     ));
//   }
// }