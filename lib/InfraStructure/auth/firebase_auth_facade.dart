import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:otbokhli_app/Domain/Auth/auth_failure.dart';
import 'package:otbokhli_app/Domain/Auth/i_auth_facade.dart';
import 'package:otbokhli_app/Domain/Auth/value_objects.dart';

class FirebaseAuthFacade implements IAuthFacade{
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;

  FirebaseAuthFacade(this._firebaseAuth, this._googleSignIn);
  
  
  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({EmailAddress? emailAddress, Password? password})async{
      final emailAddressStr= emailAddress!.getOrCrash();
      final passwordStr= password!.getOrCrash();

      try{
        await _firebaseAuth.createUserWithEmailAndPassword(email: emailAddressStr, password: passwordStr);
        return right(unit);
      }on FirebaseAuthException catch(e){
        if(e.code=='email-already-in-use'){
          return left(const AuthFailure.emailAlreadyInUse());
        }else{
          return left(const AuthFailure.serverError());
        }
      }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({EmailAddress? emailAddress, Password? password}) async{
     final emailAddressStr= emailAddress!.getOrCrash();
      final passwordStr= password!.getOrCrash();

      try{
        await _firebaseAuth.signInWithEmailAndPassword(email: emailAddressStr, password: passwordStr);
        return right(unit);
      }on FirebaseAuthException catch(e){
        if(e.code=='invalid-email' || e.code=='wrong-passowrd' || e.code=='user-not-found'){
          return left(const AuthFailure.invalidEmailAndPasswordCombination());
        }else{
          return left(const AuthFailure.serverError());
        }
      }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle()async {
    try {
      final googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        return left(const AuthFailure.cancelledByUser());
      }

      final googleAuthentication = await googleUser.authentication;

      final authCredential = GoogleAuthProvider.credential(
        idToken: googleAuthentication.idToken,
        accessToken: googleAuthentication.accessToken,
      );

      await _firebaseAuth.signInWithCredential(authCredential);
      return right(unit);
    } on FirebaseAuthException catch (_) {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<void> signOut() async{
    await _firebaseAuth.signOut();
    await _googleSignIn.signOut();
  }

  @override
  bool checkAuthintication() {
    return _firebaseAuth.currentUser==null? false:true; 
  }

  
  

}