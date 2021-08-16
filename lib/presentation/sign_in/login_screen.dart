import 'package:flutter/material.dart';
import 'package:otbokhli_app/presentation/sign_in/widgets/sign_in_form.dart';

class LoginScreen extends StatelessWidget {
  static const ROUTE_NAME= 'login_screen';
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Sign In'),
      ),
      body: SingleChildScrollView(
        child: SignInForm(),
      ),
    );
  }
}
