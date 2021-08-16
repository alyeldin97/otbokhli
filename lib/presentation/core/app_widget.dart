import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:otbokhli_app/Application/Auth/auth_bloc/auth_bloc.dart';
import 'package:otbokhli_app/Application/Auth/sign_in_form_bloc/sign_in_bloc_bloc.dart';
import 'package:otbokhli_app/InfraStructure/auth/firebase_auth_facade.dart';
import 'package:otbokhli_app/presentation/sign_in/login_screen.dart';
import 'package:otbokhli_app/router.dart';
import 'package:otbokhli_app/styles/theme_data.dart';

class MyApp extends StatelessWidget {
  AppRouter _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignInFormBloc(
          FirebaseAuthFacade(FirebaseAuth.instance, GoogleSignIn())),
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
              create: (context) => AuthBloc(
                  FirebaseAuthFacade(FirebaseAuth.instance, GoogleSignIn()))..add(const AuthEvent.checkAuth())),
        ],
        child: MaterialApp(
          onGenerateRoute: _appRouter.ongenerateRoute,
          title: 'Otbokhli',
          debugShowCheckedModeBanner: false,
          
          theme: toggleThemes(isDarkTheme: false),
        ),
      ),
    );
  }
}
