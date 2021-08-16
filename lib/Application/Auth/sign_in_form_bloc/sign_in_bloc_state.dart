part of 'sign_in_bloc_bloc.dart';

@freezed
class SignInFormState with _$SignInFormState {
  const factory SignInFormState({
    EmailAddress? email,
    Password? password,
    bool? passwordNotVisisble,
    bool? isSubmitting,
    bool? showErrorMessages,
    Option<Either<AuthFailure, Unit>>? authFailureOrSuccessOption,
  }) = _SignInFormState;

  factory SignInFormState.initial() => SignInFormState(
        email: EmailAddress(''),
        password: Password(''),
        isSubmitting: false,
        passwordNotVisisble: false,
        showErrorMessages: false,
        authFailureOrSuccessOption: none(),
      );
}
