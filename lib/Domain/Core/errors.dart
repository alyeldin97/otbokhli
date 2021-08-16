import 'package:otbokhli_app/Domain/Core/value_failures.dart';

class UnExpectedValueError extends Error{
  final ValueFailure valueFailure;

  UnExpectedValueError(this.valueFailure);
  
  @override
  String toString() {
      final String explanation ='Encountered a value failure at an unrecoverable point';
      return '$explanation . Terminating , Failure was: $valueFailure';
  }
}