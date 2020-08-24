import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class FirebaseAuthService {
  final db = FirebaseFirestore.instance;
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  readData() async {
    await Firebase.initializeApp();
    CollectionReference snapshot = db.collection('User');
    snapshot.snapshots().forEach((element) {
      element.docs.forEach((element) {
        print(element.id);
      });
      print(element.size);
    });
    signIn("", "");
    print("snapshot");
  }

  login() async {
    FirebaseAuthService().readData();
  }

  Future<User> signIn(String email, String password) async {
    email = "r@1.co";
    password = "123456";
    UserCredential result = await _firebaseAuth.signInWithEmailAndPassword(
        email: email, password: password);
    //_firebaseAuth.sendSignInWithEmailLink(email: null, url: null, handleCodeInApp: null, iOSBundleID: null, androidPackageName: null, androidInstallIfNotAvailable: null, androidMinimumVersion: null)
    User user = result.user;
    String userId = user.uid;
    print(userId);
    return user;
  }
}
