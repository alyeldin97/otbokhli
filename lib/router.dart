import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:otbokhli_app/presentation/home/home_screen.dart';
import 'package:otbokhli_app/presentation/sign_in/forgot_password_screen.dart';
import 'package:otbokhli_app/presentation/sign_in/login_screen.dart';
import 'package:otbokhli_app/presentation/sign_in/register_screen.dart';
import 'package:otbokhli_app/presentation/splash_screen/splash_screen.dart';

class AppRouter {
  
  Route? ongenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case HomeScreen.ROUTE_NAME:
        return MaterialPageRoute(
            builder: (context) =>HomeScreen(),
        );
      case SplashScreen.ROUTE_NAME:
        return MaterialPageRoute(
            builder: (context) =>SplashScreen(),
        );
      case LoginScreen.ROUTE_NAME:
        return MaterialPageRoute(
            builder: (context) =>LoginScreen(),
        );
      case RegisterScreen.ROUTE_NAME:
        return MaterialPageRoute(
            builder: (context) =>RegisterScreen(),
        );
      case ForgotPasswordScreen.ROUTE_NAME:
        return MaterialPageRoute(
            builder: (context) =>ForgotPasswordScreen(),
        );

      default:
        return null;
    }
  }

  void dispose(){
    
  }
}