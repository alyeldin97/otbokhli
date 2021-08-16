import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:otbokhli_app/Application/Auth/sign_in_form_bloc/sign_in_bloc_bloc.dart';
import 'package:otbokhli_app/InfraStructure/auth/firebase_auth_facade.dart';

import 'package:otbokhli_app/presentation/sign_in/widgets/register_form.dart';

class RegisterScreen extends StatelessWidget {
    static const ROUTE_NAME= 'register_screen';

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;

    return BlocProvider(
      create: (context) => SignInFormBloc(FirebaseAuthFacade(FirebaseAuth.instance, GoogleSignIn())),
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Sign Up'),
        ),
        body: SingleChildScrollView(
          child: RegisterForm(),
        ),
      ),
    );
  }
}
