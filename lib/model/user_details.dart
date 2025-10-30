import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserDataModel {
  currentUserDetails() async {
    User? user = FirebaseAuth.instance.currentUser;

    await FirebaseFirestore.instance.collection('users').doc(user!.email).get();
  }

  setUserDetails(email, pwd) async {
    if (email.text != null && pwd.text != null) {
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
            email: email.text,
            password: pwd.text,
          );
      setCredentials(userCredential, email);
    }
  }

  setCredentials(credential, email) {
    FirebaseFirestore.instance
        .collection('users')
        .doc(credential.user!.email)
        .set({
          'username': email.text.split('@')[0],
          'email': email.text,
          'role': 'user',
          'firstname': '',
          'lastname': '',
          'phoneNumber': '',
          'occupation': '',
          'organisation': '',
        });
  }
}
