import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auth_buttons/auth_buttons.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:otbokhli_app/Application/Auth/sign_in_form_bloc/sign_in_bloc_bloc.dart';
import 'package:otbokhli_app/Domain/Auth/auth_failure.dart';
import 'package:otbokhli_app/Styles/colors.dart';
import 'package:otbokhli_app/Styles/textstyles.dart';
import 'package:otbokhli_app/presentation/sign_in/register_screen.dart';
import '../../core/reusable_components.dart';
import '../forgot_password_screen.dart';

class SignInForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    bool? passwordNotVisisble = false;
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: (BuildContext context, state) {
        state.authFailureOrSuccessOption!.fold(
            () => null,
            (either) => either.fold(
                (f) => FlushbarHelper.createError(
                    message: f.map(
                        cancelledByUser: (_) => 'Google Sign In Cancelled',
                        serverError: (_) => 'Server Error Occurred',
                        emailAlreadyInUse: (_) => 'The Email is Already in Use',
                        invalidEmailAndPasswordCombination: (_) =>
                            'Invalid Email adn Password Combination')).show(
                    context),
                (r) => null));
      },
      builder: (BuildContext context, state) {
        var bloc = SignInFormBloc.get(context);
        passwordNotVisisble = bloc.state.passwordNotVisisble;
        return Form(
          autovalidateMode: bloc.state.showErrorMessages!
              ? AutovalidateMode.always
              : AutovalidateMode.disabled,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: w * 0.05,
              vertical: w * 0.09,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome to Otbokhli',
                  style: title(w),
                ),
                height(h * 0.01),
                Container(
                    width: w * 0.8,
                    child: Text(
                      'Enter Your Email Address or Phone Number to sign in',
                      style: descriptionBlack(w),
                    )),
                height(h * 0.02),
                buildTextFormField(
                  w,
                  onChanged: (emailStr) {
                    bloc.add(SignInFormEvent.emailChanged(rawEmail: emailStr));
                  },
                  hint: 'E-Mail',
                  prefixIcon: Icons.person_outline,
                  validate: (value) => bloc.state.email!.value.fold(
                      (l) => l.map(
                          invalidEmail: (_) => 'Invalid Email',
                          shortPassword: (g) => null),
                      (r) => null),
                ),
                height(h * 0.03),
                buildTextFormField(w,
                    onChanged: (passwordStr) {
                      bloc.add(SignInFormEvent.passwordChanged(rawPassword: passwordStr));
                    },
                    hint: 'Password',
                    validate: (value) => bloc.state.password!.value.fold(
                        (l) => l.map(
                            invalidEmail: (_) => null,
                            shortPassword: (_) => 'Short Password'),
                        (r) => null),
                    prefixIcon: Icons.lock,
                    obscureText: passwordNotVisisble,
                    suffixIcon: IconButton(
                      onPressed: () {
                        bloc.add(const SignInFormEvent.passwordVisibilityPressed());
                      },
                      icon: passwordNotVisisble!? const Icon(Icons.visibility_off):
                          const Icon(Icons.visibility),
                    )),
                height(h * 0.004),
                Row(
                  children: [
                    Switch(
                        activeColor: green, value: true, onChanged: (bool) {}),
                    Text(
                      'Remember me',
                      style: descriptionGrey(w),
                    ),
                    Spacer(),
                    greenTextButton('Forgot Password?', () {
                      navigateTo(context, ForgotPasswordScreen.ROUTE_NAME);
                    }),
                  ],
                ),
                height(h * 0.004),
                state.isSubmitting!
                    ? loadingWidget()
                    : greenElevatedButton(w, 'Sign In', onPressed: () {
                        if (true) {
                          bloc.add(const SignInFormEvent
                              .signInWithEmailAndPasswordPressed());
                        }
                      }),
                height(h * 0.004),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an account?',
                      style: descriptionBlack(w),
                    ),
                    greenTextButton("Sign Up", () {
                      navigateTo(context, RegisterScreen.ROUTE_NAME);
                    }),
                  ],
                ),
                height(h * 0.004),
                Center(
                    child: Text(
                  'OR',
                  style: descriptionBlack(w),
                )),
                height(h * 0.02),
                height(h * 0.02),
                Center(
                    child: GoogleAuthButton(
                        onPressed: () {
                          bloc.add(const SignInFormEvent.signInWithGooglePressed());
                        },
                        style: AuthButtonStyle(
                          splashColor: green.withOpacity(0.1),
                          width: w * 0.8,
                        ))),
              ],
            ),
          ),
        );
      },
    );
  }
}
