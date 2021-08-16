import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:otbokhli_app/Domain/Core/errors.dart';
import 'package:otbokhli_app/Domain/Core/value_failures.dart';

@immutable
abstract class ValueObject<T> {
  const ValueObject();
  Either<ValueFailure<T>,T>  get value;
  
  //RETURNS VALUE UNCHANGED IF VALID OR THROWS ERROR IF UNVALID
  T getOrCrash(){
    return value.fold((f) => throw(UnExpectedValueError(f)), (r) => r);
  }

  bool isValid() => value.isRight();

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is ValueObject<T> &&
      other.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'ValueObject(value: $value)';
}






