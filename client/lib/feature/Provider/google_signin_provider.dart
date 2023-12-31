
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleSignProvider extends ChangeNotifier {
final googleSignIn = GoogleSignIn();
GoogleSignInAccount? _user;
GoogleSignInAccount get user => _user!;
Future Login()async{
final googleuser= await googleSignIn.signIn();
if (googleuser==null) return
_user=googleuser;
final googleAuth=await googleuser.authentication;
final credential = await GoogleAuthProvider.credential(accessToken: googleAuth.accessToken,idToken: googleAuth.idToken);
await FirebaseAuth.instance.signInWithCredential(credential);
notifyListeners();
}



}