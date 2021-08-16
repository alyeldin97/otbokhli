import 'package:flutter/material.dart';
import 'package:otbokhli_app/Styles/textstyles.dart';

import '../core/reusable_components.dart';

class ForgotPasswordScreen extends StatelessWidget {
    static const ROUTE_NAME= 'forgot_password_screen';

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text('Forgot Password'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: w * 0.05,
            vertical: w * 0.09,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Forgot Password',
                style: title(w),
              ),
              height(h * 0.02),
              Container(
                  width: w * 0.8,
                  child: Text(
                    'Kindly Enter Your Email to Recover Your Password',
                    style: descriptionGrey(w),
                  )),
            
              height(h * 0.09),
              buildTextFormField(
                w,
                hint: 'E-Mail',
                prefixIcon: Icons.mail,
              ),
              
              height(h * 0.09),
              greenElevatedButton(w, 'Reset Password'),
              
              ],
          ),
        ),
      ),
    );
  }
}
