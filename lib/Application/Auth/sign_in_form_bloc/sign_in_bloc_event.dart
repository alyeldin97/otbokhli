part of 'sign_in_bloc_bloc.dart';

@freezed
class SignInFormEvent with _$SignInFormEvent {
  const factory SignInFormEvent.emailChanged({String? rawEmail}) =
      _EmailChanged;
  const factory SignInFormEvent.passwordChanged({String? rawPassword}) =
      _PasswordChnaged;
  const factory SignInFormEvent.signInWithEmailAndPasswordPressed() =
      _SignInWithEmailAndPasswordPressed;
  const factory SignInFormEvent.registerWithEmailAndPasswordPressed() =
      _RegisterWithEmailAndPasswordPressed;
  const factory SignInFormEvent.signInWithGooglePressed() = _SignInWithGoogle;
  const factory SignInFormEvent.passwordVisibilityPressed() =
      _PasswordVisibilityPressed;
}
