part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.auth() = _Auth;

  const factory AuthState.notAuth() = _NotAuth;
}
