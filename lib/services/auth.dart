import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  // _ means private(can only use this variable in this file not in other files.)
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // sign in anon(anon --> anonymous)
  Future signInAnon() async {
    try {
      //deprecated method to new methods
      //FirebaseUser -> User
      //AuthResult -> UserCredential

      //GoogleAuthProvider.getCredential() has been changed to GoogleAuthProvider.credential()
      //onAuthStateChanged which notifies about changes to the user's sign-in state was replaced with authStateChanges()

      //currentUser() which is a method to retrieve the currently logged in user, was replaced with the property currentUser and it no longer returns a Future<FirebaseUser>

      UserCredential result = await _auth.signInAnonymously();
      User? user = result.user;
      return user;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  // sign in with email and password

  // register with email and password

  // sign out

}
