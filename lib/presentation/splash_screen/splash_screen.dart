import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:otbokhli_app/Application/Auth/auth_bloc/auth_bloc.dart';
import 'package:otbokhli_app/presentation/core/reusable_components.dart';
import 'package:otbokhli_app/presentation/home/home_screen.dart';
import 'package:otbokhli_app/presentation/sign_in/login_screen.dart';

class SplashScreen extends StatelessWidget {
  static const ROUTE_NAME = '/';
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc,AuthState>(
      listener: (context,state){
        state.map(initial: (_){}, auth: (_){
          navigateReplacement(context, LoginScreen.ROUTE_NAME);
        }, notAuth: (_){
          navigateReplacement(context, HomeScreen.ROUTE_NAME);
        });
      },
      child: Scaffold(
        body: loadingWidget(),
      ),
    );
  }
}
