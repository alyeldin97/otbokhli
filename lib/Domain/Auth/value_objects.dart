import 'package:dartz/dartz.dart';
import 'package:otbokhli_app/Domain/Core/value_object.dart';
import 'package:otbokhli_app/Domain/Core/value_validators.dart';
import 'package:otbokhli_app/Domain/Core/value_failures.dart';

class EmailAddress extends ValueObject<String>{
@override
final Either<ValueFailure<String>,String> value;

    factory EmailAddress(String email){
    return EmailAddress._(validateEmailAddress(email));
  }

  const EmailAddress._(this.value);
}


class Password extends ValueObject<String>{
@override
final Either<ValueFailure<String>,String> value;

    factory Password(String email){
    return Password._(validatePassword(email));
  }

  const Password._(this.value);
}

