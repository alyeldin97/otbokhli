import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:otbokhli_app/Domain/Auth/auth_failure.dart';
import 'package:otbokhli_app/Domain/Auth/value_objects.dart';

abstract class IAuthFacade {
  Future<Either<AuthFailure, Unit>>? signInWithEmailAndPassword(
      {@required EmailAddress? emailAddress, @required Password? password});
  Future<Either<AuthFailure, Unit>>? registerWithEmailAndPassword(
      {@required EmailAddress? emailAddress, @required Password? password});
  Future<Either<AuthFailure, Unit>>? signInWithGoogle();

  Future<void> signOut();

  bool checkAuthintication();
  
}
