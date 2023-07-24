import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthService{
  SignInWithGoogle() async{
    // begin interactive signin process
   final GoogleSignInAccount? _GoogleUser = await GoogleSignIn().signIn();
    // obtain auth details from request
    final GoogleSignInAuthentication gAuth = await _GoogleUser!.authentication;
    // create a new user credential
    final credential = GoogleAuthProvider.credential(
      accessToken: gAuth.accessToken ,
      idToken: gAuth.idToken
    );
    // finally signin
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }
}