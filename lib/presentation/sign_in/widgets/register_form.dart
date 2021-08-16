import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:otbokhli_app/Application/Auth/sign_in_form_bloc/sign_in_bloc_bloc.dart';
import 'package:otbokhli_app/presentation/core/reusable_components.dart';
import 'package:otbokhli_app/Styles/colors.dart';
import 'package:otbokhli_app/Styles/textstyles.dart';
import 'package:auth_buttons/auth_buttons.dart';

class RegisterForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    bool? passwordNotVisisble =false;
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
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: w * 0.05,
              vertical: w * 0.09,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Create Account',
                  style: title(w),
                ),
                height(h * 0.01),
                Container(
                    width: w * 0.8,
                    child: Text(
                      'Kindly fill in your data to sign up,',
                      style: descriptionBlack(w),
                    )),
                greenTextButton('Already Have an Account?', () {
                  Navigator.pop(context);
                }),
                height(h * 0.02),
                buildTextFormField(w, hint: 'E-Mail', onChanged: (emailStr) {
                  bloc.add(SignInFormEvent.emailChanged(rawEmail: emailStr));
                }, validate: (_) {
                  bloc.state.email!.value.fold(
                      (failure) => failure.map(
                          invalidEmail: (_) => 'Invalid Email',
                          shortPassword: (_) => null),
                      (r) => null);
                }, prefixIcon: Icons.mail),
                height(h * 0.02),
                buildTextFormField(
                  w,
                  hint: 'Phone Number',
                  prefixIcon: Icons.phone,
                ),
                height(h * 0.03),
                buildTextFormField(w, hint: 'Password',
                    onChanged: (passwordStr) {
                  bloc.add(SignInFormEvent.passwordChanged(rawPassword: passwordStr));
                }, validate: (_) {
                  bloc.state.password!.value.fold(
                      (failure) => failure.map(
                          shortPassword: (_) => 'Short Password',
                          invalidEmail: (_) => null),
                      (r) => null);
                },
                    prefixIcon: Icons.lock,
                    obscureText: passwordNotVisisble,
                    suffixIcon: IconButton(
                      onPressed: () {
                        bloc.add(const SignInFormEvent.passwordVisibilityPressed());
                      },
                      icon: passwordNotVisisble!? const Icon(Icons.visibility_off):Icon(Icons.visibility),
                    )),
                height(h * 0.04),
                state.isSubmitting!
                    ? loadingWidget()
                    : greenElevatedButton(w, 'Create Account', onPressed: () {
                        bloc.add(const SignInFormEvent
                            .registerWithEmailAndPasswordPressed());
                      }),
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
