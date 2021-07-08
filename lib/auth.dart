import 'package:firebase_auth/firebase_auth.dart';

class Auth {
  final _auth = FirebaseAuth.instance;
  Future<void> signOut() async {
    await _auth.signOut();
  }

}
