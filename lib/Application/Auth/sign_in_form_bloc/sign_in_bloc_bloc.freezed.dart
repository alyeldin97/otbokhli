// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'sign_in_bloc_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SignInFormEventTearOff {
  const _$SignInFormEventTearOff();

  _EmailChanged emailChanged({String? rawEmail}) {
    return _EmailChanged(
      rawEmail: rawEmail,
    );
  }

  _PasswordChnaged passwordChanged({String? rawPassword}) {
    return _PasswordChnaged(
      rawPassword: rawPassword,
    );
  }

  _SignInWithEmailAndPasswordPressed signInWithEmailAndPasswordPressed() {
    return const _SignInWithEmailAndPasswordPressed();
  }

  _RegisterWithEmailAndPasswordPressed registerWithEmailAndPasswordPressed() {
    return const _RegisterWithEmailAndPasswordPressed();
  }

  _SignInWithGoogle signInWithGooglePressed() {
    return const _SignInWithGoogle();
  }

  _PasswordVisibilityPressed passwordVisibilityPressed() {
    return const _PasswordVisibilityPressed();
  }
}

/// @nodoc
const $SignInFormEvent = _$SignInFormEventTearOff();

/// @nodoc
mixin _$SignInFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? rawEmail) emailChanged,
    required TResult Function(String? rawPassword) passwordChanged,
    required TResult Function() signInWithEmailAndPasswordPressed,
    required TResult Function() registerWithEmailAndPasswordPressed,
    required TResult Function() signInWithGooglePressed,
    required TResult Function() passwordVisibilityPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? rawEmail)? emailChanged,
    TResult Function(String? rawPassword)? passwordChanged,
    TResult Function()? signInWithEmailAndPasswordPressed,
    TResult Function()? registerWithEmailAndPasswordPressed,
    TResult Function()? signInWithGooglePressed,
    TResult Function()? passwordVisibilityPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChnaged value) passwordChanged,
    required TResult Function(_SignInWithEmailAndPasswordPressed value)
        signInWithEmailAndPasswordPressed,
    required TResult Function(_RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordPressed,
    required TResult Function(_SignInWithGoogle value) signInWithGooglePressed,
    required TResult Function(_PasswordVisibilityPressed value)
        passwordVisibilityPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChnaged value)? passwordChanged,
    TResult Function(_SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    TResult Function(_RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult Function(_SignInWithGoogle value)? signInWithGooglePressed,
    TResult Function(_PasswordVisibilityPressed value)?
        passwordVisibilityPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInFormEventCopyWith<$Res> {
  factory $SignInFormEventCopyWith(
          SignInFormEvent value, $Res Function(SignInFormEvent) then) =
      _$SignInFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignInFormEventCopyWithImpl<$Res>
    implements $SignInFormEventCopyWith<$Res> {
  _$SignInFormEventCopyWithImpl(this._value, this._then);

  final SignInFormEvent _value;
  // ignore: unused_field
  final $Res Function(SignInFormEvent) _then;
}

/// @nodoc
abstract class _$EmailChangedCopyWith<$Res> {
  factory _$EmailChangedCopyWith(
          _EmailChanged value, $Res Function(_EmailChanged) then) =
      __$EmailChangedCopyWithImpl<$Res>;
  $Res call({String? rawEmail});
}

/// @nodoc
class __$EmailChangedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements _$EmailChangedCopyWith<$Res> {
  __$EmailChangedCopyWithImpl(
      _EmailChanged _value, $Res Function(_EmailChanged) _then)
      : super(_value, (v) => _then(v as _EmailChanged));

  @override
  _EmailChanged get _value => super._value as _EmailChanged;

  @override
  $Res call({
    Object? rawEmail = freezed,
  }) {
    return _then(_EmailChanged(
      rawEmail: rawEmail == freezed
          ? _value.rawEmail
          : rawEmail // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_EmailChanged implements _EmailChanged {
  const _$_EmailChanged({this.rawEmail});

  @override
  final String? rawEmail;

  @override
  String toString() {
    return 'SignInFormEvent.emailChanged(rawEmail: $rawEmail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EmailChanged &&
            (identical(other.rawEmail, rawEmail) ||
                const DeepCollectionEquality()
                    .equals(other.rawEmail, rawEmail)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(rawEmail);

  @JsonKey(ignore: true)
  @override
  _$EmailChangedCopyWith<_EmailChanged> get copyWith =>
      __$EmailChangedCopyWithImpl<_EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? rawEmail) emailChanged,
    required TResult Function(String? rawPassword) passwordChanged,
    required TResult Function() signInWithEmailAndPasswordPressed,
    required TResult Function() registerWithEmailAndPasswordPressed,
    required TResult Function() signInWithGooglePressed,
    required TResult Function() passwordVisibilityPressed,
  }) {
    return emailChanged(rawEmail);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? rawEmail)? emailChanged,
    TResult Function(String? rawPassword)? passwordChanged,
    TResult Function()? signInWithEmailAndPasswordPressed,
    TResult Function()? registerWithEmailAndPasswordPressed,
    TResult Function()? signInWithGooglePressed,
    TResult Function()? passwordVisibilityPressed,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(rawEmail);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChnaged value) passwordChanged,
    required TResult Function(_SignInWithEmailAndPasswordPressed value)
        signInWithEmailAndPasswordPressed,
    required TResult Function(_RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordPressed,
    required TResult Function(_SignInWithGoogle value) signInWithGooglePressed,
    required TResult Function(_PasswordVisibilityPressed value)
        passwordVisibilityPressed,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChnaged value)? passwordChanged,
    TResult Function(_SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    TResult Function(_RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult Function(_SignInWithGoogle value)? signInWithGooglePressed,
    TResult Function(_PasswordVisibilityPressed value)?
        passwordVisibilityPressed,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class _EmailChanged implements SignInFormEvent {
  const factory _EmailChanged({String? rawEmail}) = _$_EmailChanged;

  String? get rawEmail => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$EmailChangedCopyWith<_EmailChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PasswordChnagedCopyWith<$Res> {
  factory _$PasswordChnagedCopyWith(
          _PasswordChnaged value, $Res Function(_PasswordChnaged) then) =
      __$PasswordChnagedCopyWithImpl<$Res>;
  $Res call({String? rawPassword});
}

/// @nodoc
class __$PasswordChnagedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements _$PasswordChnagedCopyWith<$Res> {
  __$PasswordChnagedCopyWithImpl(
      _PasswordChnaged _value, $Res Function(_PasswordChnaged) _then)
      : super(_value, (v) => _then(v as _PasswordChnaged));

  @override
  _PasswordChnaged get _value => super._value as _PasswordChnaged;

  @override
  $Res call({
    Object? rawPassword = freezed,
  }) {
    return _then(_PasswordChnaged(
      rawPassword: rawPassword == freezed
          ? _value.rawPassword
          : rawPassword // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_PasswordChnaged implements _PasswordChnaged {
  const _$_PasswordChnaged({this.rawPassword});

  @override
  final String? rawPassword;

  @override
  String toString() {
    return 'SignInFormEvent.passwordChanged(rawPassword: $rawPassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PasswordChnaged &&
            (identical(other.rawPassword, rawPassword) ||
                const DeepCollectionEquality()
                    .equals(other.rawPassword, rawPassword)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(rawPassword);

  @JsonKey(ignore: true)
  @override
  _$PasswordChnagedCopyWith<_PasswordChnaged> get copyWith =>
      __$PasswordChnagedCopyWithImpl<_PasswordChnaged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? rawEmail) emailChanged,
    required TResult Function(String? rawPassword) passwordChanged,
    required TResult Function() signInWithEmailAndPasswordPressed,
    required TResult Function() registerWithEmailAndPasswordPressed,
    required TResult Function() signInWithGooglePressed,
    required TResult Function() passwordVisibilityPressed,
  }) {
    return passwordChanged(rawPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? rawEmail)? emailChanged,
    TResult Function(String? rawPassword)? passwordChanged,
    TResult Function()? signInWithEmailAndPasswordPressed,
    TResult Function()? registerWithEmailAndPasswordPressed,
    TResult Function()? signInWithGooglePressed,
    TResult Function()? passwordVisibilityPressed,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(rawPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChnaged value) passwordChanged,
    required TResult Function(_SignInWithEmailAndPasswordPressed value)
        signInWithEmailAndPasswordPressed,
    required TResult Function(_RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordPressed,
    required TResult Function(_SignInWithGoogle value) signInWithGooglePressed,
    required TResult Function(_PasswordVisibilityPressed value)
        passwordVisibilityPressed,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChnaged value)? passwordChanged,
    TResult Function(_SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    TResult Function(_RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult Function(_SignInWithGoogle value)? signInWithGooglePressed,
    TResult Function(_PasswordVisibilityPressed value)?
        passwordVisibilityPressed,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class _PasswordChnaged implements SignInFormEvent {
  const factory _PasswordChnaged({String? rawPassword}) = _$_PasswordChnaged;

  String? get rawPassword => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$PasswordChnagedCopyWith<_PasswordChnaged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SignInWithEmailAndPasswordPressedCopyWith<$Res> {
  factory _$SignInWithEmailAndPasswordPressedCopyWith(
          _SignInWithEmailAndPasswordPressed value,
          $Res Function(_SignInWithEmailAndPasswordPressed) then) =
      __$SignInWithEmailAndPasswordPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SignInWithEmailAndPasswordPressedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements _$SignInWithEmailAndPasswordPressedCopyWith<$Res> {
  __$SignInWithEmailAndPasswordPressedCopyWithImpl(
      _SignInWithEmailAndPasswordPressed _value,
      $Res Function(_SignInWithEmailAndPasswordPressed) _then)
      : super(_value, (v) => _then(v as _SignInWithEmailAndPasswordPressed));

  @override
  _SignInWithEmailAndPasswordPressed get _value =>
      super._value as _SignInWithEmailAndPasswordPressed;
}

/// @nodoc

class _$_SignInWithEmailAndPasswordPressed
    implements _SignInWithEmailAndPasswordPressed {
  const _$_SignInWithEmailAndPasswordPressed();

  @override
  String toString() {
    return 'SignInFormEvent.signInWithEmailAndPasswordPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignInWithEmailAndPasswordPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? rawEmail) emailChanged,
    required TResult Function(String? rawPassword) passwordChanged,
    required TResult Function() signInWithEmailAndPasswordPressed,
    required TResult Function() registerWithEmailAndPasswordPressed,
    required TResult Function() signInWithGooglePressed,
    required TResult Function() passwordVisibilityPressed,
  }) {
    return signInWithEmailAndPasswordPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? rawEmail)? emailChanged,
    TResult Function(String? rawPassword)? passwordChanged,
    TResult Function()? signInWithEmailAndPasswordPressed,
    TResult Function()? registerWithEmailAndPasswordPressed,
    TResult Function()? signInWithGooglePressed,
    TResult Function()? passwordVisibilityPressed,
    required TResult orElse(),
  }) {
    if (signInWithEmailAndPasswordPressed != null) {
      return signInWithEmailAndPasswordPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChnaged value) passwordChanged,
    required TResult Function(_SignInWithEmailAndPasswordPressed value)
        signInWithEmailAndPasswordPressed,
    required TResult Function(_RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordPressed,
    required TResult Function(_SignInWithGoogle value) signInWithGooglePressed,
    required TResult Function(_PasswordVisibilityPressed value)
        passwordVisibilityPressed,
  }) {
    return signInWithEmailAndPasswordPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChnaged value)? passwordChanged,
    TResult Function(_SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    TResult Function(_RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult Function(_SignInWithGoogle value)? signInWithGooglePressed,
    TResult Function(_PasswordVisibilityPressed value)?
        passwordVisibilityPressed,
    required TResult orElse(),
  }) {
    if (signInWithEmailAndPasswordPressed != null) {
      return signInWithEmailAndPasswordPressed(this);
    }
    return orElse();
  }
}

abstract class _SignInWithEmailAndPasswordPressed implements SignInFormEvent {
  const factory _SignInWithEmailAndPasswordPressed() =
      _$_SignInWithEmailAndPasswordPressed;
}

/// @nodoc
abstract class _$RegisterWithEmailAndPasswordPressedCopyWith<$Res> {
  factory _$RegisterWithEmailAndPasswordPressedCopyWith(
          _RegisterWithEmailAndPasswordPressed value,
          $Res Function(_RegisterWithEmailAndPasswordPressed) then) =
      __$RegisterWithEmailAndPasswordPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$RegisterWithEmailAndPasswordPressedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements _$RegisterWithEmailAndPasswordPressedCopyWith<$Res> {
  __$RegisterWithEmailAndPasswordPressedCopyWithImpl(
      _RegisterWithEmailAndPasswordPressed _value,
      $Res Function(_RegisterWithEmailAndPasswordPressed) _then)
      : super(_value, (v) => _then(v as _RegisterWithEmailAndPasswordPressed));

  @override
  _RegisterWithEmailAndPasswordPressed get _value =>
      super._value as _RegisterWithEmailAndPasswordPressed;
}

/// @nodoc

class _$_RegisterWithEmailAndPasswordPressed
    implements _RegisterWithEmailAndPasswordPressed {
  const _$_RegisterWithEmailAndPasswordPressed();

  @override
  String toString() {
    return 'SignInFormEvent.registerWithEmailAndPasswordPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RegisterWithEmailAndPasswordPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? rawEmail) emailChanged,
    required TResult Function(String? rawPassword) passwordChanged,
    required TResult Function() signInWithEmailAndPasswordPressed,
    required TResult Function() registerWithEmailAndPasswordPressed,
    required TResult Function() signInWithGooglePressed,
    required TResult Function() passwordVisibilityPressed,
  }) {
    return registerWithEmailAndPasswordPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? rawEmail)? emailChanged,
    TResult Function(String? rawPassword)? passwordChanged,
    TResult Function()? signInWithEmailAndPasswordPressed,
    TResult Function()? registerWithEmailAndPasswordPressed,
    TResult Function()? signInWithGooglePressed,
    TResult Function()? passwordVisibilityPressed,
    required TResult orElse(),
  }) {
    if (registerWithEmailAndPasswordPressed != null) {
      return registerWithEmailAndPasswordPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChnaged value) passwordChanged,
    required TResult Function(_SignInWithEmailAndPasswordPressed value)
        signInWithEmailAndPasswordPressed,
    required TResult Function(_RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordPressed,
    required TResult Function(_SignInWithGoogle value) signInWithGooglePressed,
    required TResult Function(_PasswordVisibilityPressed value)
        passwordVisibilityPressed,
  }) {
    return registerWithEmailAndPasswordPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChnaged value)? passwordChanged,
    TResult Function(_SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    TResult Function(_RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult Function(_SignInWithGoogle value)? signInWithGooglePressed,
    TResult Function(_PasswordVisibilityPressed value)?
        passwordVisibilityPressed,
    required TResult orElse(),
  }) {
    if (registerWithEmailAndPasswordPressed != null) {
      return registerWithEmailAndPasswordPressed(this);
    }
    return orElse();
  }
}

abstract class _RegisterWithEmailAndPasswordPressed implements SignInFormEvent {
  const factory _RegisterWithEmailAndPasswordPressed() =
      _$_RegisterWithEmailAndPasswordPressed;
}

/// @nodoc
abstract class _$SignInWithGoogleCopyWith<$Res> {
  factory _$SignInWithGoogleCopyWith(
          _SignInWithGoogle value, $Res Function(_SignInWithGoogle) then) =
      __$SignInWithGoogleCopyWithImpl<$Res>;
}

/// @nodoc
class __$SignInWithGoogleCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements _$SignInWithGoogleCopyWith<$Res> {
  __$SignInWithGoogleCopyWithImpl(
      _SignInWithGoogle _value, $Res Function(_SignInWithGoogle) _then)
      : super(_value, (v) => _then(v as _SignInWithGoogle));

  @override
  _SignInWithGoogle get _value => super._value as _SignInWithGoogle;
}

/// @nodoc

class _$_SignInWithGoogle implements _SignInWithGoogle {
  const _$_SignInWithGoogle();

  @override
  String toString() {
    return 'SignInFormEvent.signInWithGooglePressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SignInWithGoogle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? rawEmail) emailChanged,
    required TResult Function(String? rawPassword) passwordChanged,
    required TResult Function() signInWithEmailAndPasswordPressed,
    required TResult Function() registerWithEmailAndPasswordPressed,
    required TResult Function() signInWithGooglePressed,
    required TResult Function() passwordVisibilityPressed,
  }) {
    return signInWithGooglePressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? rawEmail)? emailChanged,
    TResult Function(String? rawPassword)? passwordChanged,
    TResult Function()? signInWithEmailAndPasswordPressed,
    TResult Function()? registerWithEmailAndPasswordPressed,
    TResult Function()? signInWithGooglePressed,
    TResult Function()? passwordVisibilityPressed,
    required TResult orElse(),
  }) {
    if (signInWithGooglePressed != null) {
      return signInWithGooglePressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChnaged value) passwordChanged,
    required TResult Function(_SignInWithEmailAndPasswordPressed value)
        signInWithEmailAndPasswordPressed,
    required TResult Function(_RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordPressed,
    required TResult Function(_SignInWithGoogle value) signInWithGooglePressed,
    required TResult Function(_PasswordVisibilityPressed value)
        passwordVisibilityPressed,
  }) {
    return signInWithGooglePressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChnaged value)? passwordChanged,
    TResult Function(_SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    TResult Function(_RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult Function(_SignInWithGoogle value)? signInWithGooglePressed,
    TResult Function(_PasswordVisibilityPressed value)?
        passwordVisibilityPressed,
    required TResult orElse(),
  }) {
    if (signInWithGooglePressed != null) {
      return signInWithGooglePressed(this);
    }
    return orElse();
  }
}

abstract class _SignInWithGoogle implements SignInFormEvent {
  const factory _SignInWithGoogle() = _$_SignInWithGoogle;
}

/// @nodoc
abstract class _$PasswordVisibilityPressedCopyWith<$Res> {
  factory _$PasswordVisibilityPressedCopyWith(_PasswordVisibilityPressed value,
          $Res Function(_PasswordVisibilityPressed) then) =
      __$PasswordVisibilityPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$PasswordVisibilityPressedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements _$PasswordVisibilityPressedCopyWith<$Res> {
  __$PasswordVisibilityPressedCopyWithImpl(_PasswordVisibilityPressed _value,
      $Res Function(_PasswordVisibilityPressed) _then)
      : super(_value, (v) => _then(v as _PasswordVisibilityPressed));

  @override
  _PasswordVisibilityPressed get _value =>
      super._value as _PasswordVisibilityPressed;
}

/// @nodoc

class _$_PasswordVisibilityPressed implements _PasswordVisibilityPressed {
  const _$_PasswordVisibilityPressed();

  @override
  String toString() {
    return 'SignInFormEvent.passwordVisibilityPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _PasswordVisibilityPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? rawEmail) emailChanged,
    required TResult Function(String? rawPassword) passwordChanged,
    required TResult Function() signInWithEmailAndPasswordPressed,
    required TResult Function() registerWithEmailAndPasswordPressed,
    required TResult Function() signInWithGooglePressed,
    required TResult Function() passwordVisibilityPressed,
  }) {
    return passwordVisibilityPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? rawEmail)? emailChanged,
    TResult Function(String? rawPassword)? passwordChanged,
    TResult Function()? signInWithEmailAndPasswordPressed,
    TResult Function()? registerWithEmailAndPasswordPressed,
    TResult Function()? signInWithGooglePressed,
    TResult Function()? passwordVisibilityPressed,
    required TResult orElse(),
  }) {
    if (passwordVisibilityPressed != null) {
      return passwordVisibilityPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChnaged value) passwordChanged,
    required TResult Function(_SignInWithEmailAndPasswordPressed value)
        signInWithEmailAndPasswordPressed,
    required TResult Function(_RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordPressed,
    required TResult Function(_SignInWithGoogle value) signInWithGooglePressed,
    required TResult Function(_PasswordVisibilityPressed value)
        passwordVisibilityPressed,
  }) {
    return passwordVisibilityPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChnaged value)? passwordChanged,
    TResult Function(_SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    TResult Function(_RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult Function(_SignInWithGoogle value)? signInWithGooglePressed,
    TResult Function(_PasswordVisibilityPressed value)?
        passwordVisibilityPressed,
    required TResult orElse(),
  }) {
    if (passwordVisibilityPressed != null) {
      return passwordVisibilityPressed(this);
    }
    return orElse();
  }
}

abstract class _PasswordVisibilityPressed implements SignInFormEvent {
  const factory _PasswordVisibilityPressed() = _$_PasswordVisibilityPressed;
}

/// @nodoc
class _$SignInFormStateTearOff {
  const _$SignInFormStateTearOff();

  _SignInFormState call(
      {EmailAddress? email,
      Password? password,
      bool? passwordNotVisisble,
      bool? isSubmitting,
      bool? showErrorMessages,
      Option<Either<AuthFailure, Unit>>? authFailureOrSuccessOption}) {
    return _SignInFormState(
      email: email,
      password: password,
      passwordNotVisisble: passwordNotVisisble,
      isSubmitting: isSubmitting,
      showErrorMessages: showErrorMessages,
      authFailureOrSuccessOption: authFailureOrSuccessOption,
    );
  }
}

/// @nodoc
const $SignInFormState = _$SignInFormStateTearOff();

/// @nodoc
mixin _$SignInFormState {
  EmailAddress? get email => throw _privateConstructorUsedError;
  Password? get password => throw _privateConstructorUsedError;
  bool? get passwordNotVisisble => throw _privateConstructorUsedError;
  bool? get isSubmitting => throw _privateConstructorUsedError;
  bool? get showErrorMessages => throw _privateConstructorUsedError;
  Option<Either<AuthFailure, Unit>>? get authFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignInFormStateCopyWith<SignInFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInFormStateCopyWith<$Res> {
  factory $SignInFormStateCopyWith(
          SignInFormState value, $Res Function(SignInFormState) then) =
      _$SignInFormStateCopyWithImpl<$Res>;
  $Res call(
      {EmailAddress? email,
      Password? password,
      bool? passwordNotVisisble,
      bool? isSubmitting,
      bool? showErrorMessages,
      Option<Either<AuthFailure, Unit>>? authFailureOrSuccessOption});
}

/// @nodoc
class _$SignInFormStateCopyWithImpl<$Res>
    implements $SignInFormStateCopyWith<$Res> {
  _$SignInFormStateCopyWithImpl(this._value, this._then);

  final SignInFormState _value;
  // ignore: unused_field
  final $Res Function(SignInFormState) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? passwordNotVisisble = freezed,
    Object? isSubmitting = freezed,
    Object? showErrorMessages = freezed,
    Object? authFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailAddress?,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password?,
      passwordNotVisisble: passwordNotVisisble == freezed
          ? _value.passwordNotVisisble
          : passwordNotVisisble // ignore: cast_nullable_to_non_nullable
              as bool?,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool?,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool?,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>?,
    ));
  }
}

/// @nodoc
abstract class _$SignInFormStateCopyWith<$Res>
    implements $SignInFormStateCopyWith<$Res> {
  factory _$SignInFormStateCopyWith(
          _SignInFormState value, $Res Function(_SignInFormState) then) =
      __$SignInFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {EmailAddress? email,
      Password? password,
      bool? passwordNotVisisble,
      bool? isSubmitting,
      bool? showErrorMessages,
      Option<Either<AuthFailure, Unit>>? authFailureOrSuccessOption});
}

/// @nodoc
class __$SignInFormStateCopyWithImpl<$Res>
    extends _$SignInFormStateCopyWithImpl<$Res>
    implements _$SignInFormStateCopyWith<$Res> {
  __$SignInFormStateCopyWithImpl(
      _SignInFormState _value, $Res Function(_SignInFormState) _then)
      : super(_value, (v) => _then(v as _SignInFormState));

  @override
  _SignInFormState get _value => super._value as _SignInFormState;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? passwordNotVisisble = freezed,
    Object? isSubmitting = freezed,
    Object? showErrorMessages = freezed,
    Object? authFailureOrSuccessOption = freezed,
  }) {
    return _then(_SignInFormState(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailAddress?,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password?,
      passwordNotVisisble: passwordNotVisisble == freezed
          ? _value.passwordNotVisisble
          : passwordNotVisisble // ignore: cast_nullable_to_non_nullable
              as bool?,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool?,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool?,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>?,
    ));
  }
}

/// @nodoc

class _$_SignInFormState implements _SignInFormState {
  const _$_SignInFormState(
      {this.email,
      this.password,
      this.passwordNotVisisble,
      this.isSubmitting,
      this.showErrorMessages,
      this.authFailureOrSuccessOption});

  @override
  final EmailAddress? email;
  @override
  final Password? password;
  @override
  final bool? passwordNotVisisble;
  @override
  final bool? isSubmitting;
  @override
  final bool? showErrorMessages;
  @override
  final Option<Either<AuthFailure, Unit>>? authFailureOrSuccessOption;

  @override
  String toString() {
    return 'SignInFormState(email: $email, password: $password, passwordNotVisisble: $passwordNotVisisble, isSubmitting: $isSubmitting, showErrorMessages: $showErrorMessages, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignInFormState &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.passwordNotVisisble, passwordNotVisisble) ||
                const DeepCollectionEquality()
                    .equals(other.passwordNotVisisble, passwordNotVisisble)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(passwordNotVisisble) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(authFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$SignInFormStateCopyWith<_SignInFormState> get copyWith =>
      __$SignInFormStateCopyWithImpl<_SignInFormState>(this, _$identity);
}

abstract class _SignInFormState implements SignInFormState {
  const factory _SignInFormState(
          {EmailAddress? email,
          Password? password,
          bool? passwordNotVisisble,
          bool? isSubmitting,
          bool? showErrorMessages,
          Option<Either<AuthFailure, Unit>>? authFailureOrSuccessOption}) =
      _$_SignInFormState;

  @override
  EmailAddress? get email => throw _privateConstructorUsedError;
  @override
  Password? get password => throw _privateConstructorUsedError;
  @override
  bool? get passwordNotVisisble => throw _privateConstructorUsedError;
  @override
  bool? get isSubmitting => throw _privateConstructorUsedError;
  @override
  bool? get showErrorMessages => throw _privateConstructorUsedError;
  @override
  Option<Either<AuthFailure, Unit>>? get authFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SignInFormStateCopyWith<_SignInFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
