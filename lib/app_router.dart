// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors
// ignore_for_file: Unnecessary_new

import 'package:assu_app/constants/consts.dart';
import 'package:assu_app/presentation_layer/screens/client_page.dart';
import 'package:assu_app/presentation_layer/screens/signin_page.dart';
import 'package:assu_app/presentation_layer/screens/signup_page.dart';

import 'package:assu_app/presentation_layer/screens/starterPage.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route? generateRoute (RouteSettings settings){
     switch (settings.name) {
       case infoPageScreen :
         return MaterialPageRoute(builder: (_) => StarterPage());
         case signinScreenPage :
         return MaterialPageRoute(builder: (_) => SignInPage());
         case signupScreenPage :
         return MaterialPageRoute(builder: (_) => SignUpPage());
         case clientPage :
         return MaterialPageRoute(builder: (_) => ClientPage());



     }
  }
}