import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:otbokhli_app/Domain/Auth/auth_failure.dart';
import 'package:otbokhli_app/Domain/Auth/i_auth_facade.dart';
import 'package:otbokhli_app/Domain/Auth/value_objects.dart';
part 'sign_in_bloc_event.dart';
part 'sign_in_bloc_state.dart';
part 'sign_in_bloc_bloc.freezed.dart';

class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  final IAuthFacade _iAuthFacade;

  SignInFormBloc(this._iAuthFacade) : super(SignInFormState.initial());
  static SignInFormBloc get(context) {
    return BlocProvider.of(context);
  }

  SignInFormState get initialState => SignInFormState.initial();

  @override
  Stream<SignInFormState> mapEventToState(
    SignInFormEvent event,
  ) async* {
    yield* event.map(
      //UPDATE EMAIL VALIDATOR ON RAW DATA CHANGES
      passwordVisibilityPressed: (e)async*{
        yield state.copyWith(passwordNotVisisble: !state.passwordNotVisisble!);
      },
      emailChanged: (e) async* {
        yield state.copyWith(
          
            email: EmailAddress(e.rawEmail!),
            isSubmitting: false,
           
            authFailureOrSuccessOption: none());
      },
      //UPDATE Password VALIDATOR ON RAW DATA CHANGES

      passwordChanged: (e) async* {
        yield state.copyWith(
            password: Password(
            e.rawPassword!,
            ),
            isSubmitting: false,
            
            authFailureOrSuccessOption: none());
      },

      // START SHOWING LOADING INDICATOR, ERROR MESSAGES, RETURN SIGNIN FIREBASE AUTHENTICATION VALUE OR FAILURE
      signInWithEmailAndPasswordPressed: (e) async* {
        yield* signInOrRegister(_iAuthFacade.signInWithEmailAndPassword);
      },
      // START SHOWING LOADING INDICATOR, ERROR MESSAGES, RETURN CREATE USER FIREBASE AUTHENTICATION VALUE OR FAILURE

      registerWithEmailAndPasswordPressed: (e) async* {
      
        yield* signInOrRegister(_iAuthFacade.registerWithEmailAndPassword);
      },

      // SHOW GOOGLE SIGN IN WINDOW,LOADING, ERROR MESSAGES, RETURN CREATE USER FIREBASE AUTHENTICATION VALUE OR FAILURE

      signInWithGooglePressed: (e) async* {
        yield state.copyWith(
            isSubmitting: true, authFailureOrSuccessOption: none());
        final failureOrSuccess = await _iAuthFacade.signInWithGoogle();
        yield state.copyWith(
            isSubmitting: false,
            showErrorMessages: true,
            authFailureOrSuccessOption: some(failureOrSuccess!));
      },
    );
  }

  Stream<SignInFormState> signInOrRegister(
      Future<Either<AuthFailure, Unit>>? Function(
              { EmailAddress? emailAddress, Password? password})?
          signInOrRegister) async* {
    final emailIsValid = state.email!.isValid();
    final passwordIsValid = state.password!.isValid();
    if (emailIsValid && passwordIsValid) {
      //Loading State
      yield state.copyWith(
          isSubmitting: true, authFailureOrSuccessOption: none());
      
      final failureOrSuccess;
      failureOrSuccess = await signInOrRegister!(
          emailAddress: state.email, password: state.password);
      //Success or Error State
      yield state.copyWith(
          showErrorMessages: true,
          isSubmitting: false,
          authFailureOrSuccessOption: some(failureOrSuccess));
    }
    yield state.copyWith(showErrorMessages: true,isSubmitting: false);
  }
}
