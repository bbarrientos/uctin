
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'dart:async';

class ConnectionLogInValidation{
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = new GoogleSignIn();

  Future<FirebaseUser> signIn() async{
    GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();
    GoogleSignInAuthentication gSA = await googleSignInAccount.authentication;

    FirebaseUser user = await _auth.signInWithGoogle(idToken: gSA.idToken, accessToken: gSA.accessToken);
    
    print("USer name: ${user.email}");
    return user;
  }
  void singOut(){
    googleSignIn.signOut();
    print("USer Signed out");
  }
}