import 'package:getxfire/getxfire.dart';
import 'package:restaurant_flutter_version/app/blocs/validators.dart';

import '../../data/datamodel.dart';

class AuthBloc extends Object with Validators {
  FirebaseAuth? auth = FirebaseAuth.instance;
  CollectionReference? users = FirebaseFirestore.instance.collection('users');
  CollectionReference? dishes = FirebaseFirestore.instance.collection('dishes');
  CollectionReference? comments =
  FirebaseFirestore.instance.collection('comments');
  CollectionReference? promotions =
  FirebaseFirestore.instance.collection('promotions');
  CollectionReference? leaders =
  FirebaseFirestore.instance.collection('leaders');
  CollectionReference? feedback =
  FirebaseFirestore.instance.collection('feedback');

  isSignedIn() {
    return auth!.currentUser != null;
  }

  getUID() {
    return auth!.currentUser!.uid;
  }

  signInWithEmail(LoginDataModel? formData) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: formData!.email!, password: formData.password!);
      return "";
    } on FirebaseAuthException catch (e) {
      return e.code;
    }
  }

  signUpWithEmail(LoginDataModel? formData) async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: formData!.email!, password: formData.password!);
      return "";
    } on FirebaseAuthException catch (e) {
      return e.code;
    }
  }

  Future<UserCredential>? signInWithGoogle() async {
    GoogleAuthProvider? googleProvider = GoogleAuthProvider();
    return await FirebaseAuth.instance.signInWithPopup(googleProvider);
  }

  logout() {
    try {
      return FirebaseAuth.instance.signOut();
    } on FirebaseAuthException catch (e) {
      return e.code;
    }
  }

  Future getData() async {
    if (auth!.currentUser != null) {
      return users!.doc(auth!.currentUser!.uid).get();
    }
    return false;
  }

  Future getLeaderData(String? filter) async {
    if (auth!.currentUser != null) {
      if (filter == "leader") return leaders!.doc(auth!.currentUser!.uid).get();
    }
    return false;
  }

  Future getDocData(String? filter, String? docId) async {
    if (auth!.currentUser != null) {
      if (filter == "users") return users!.doc(docId).get();
    }
    return false;
  }

  Future getDishId(String? id) async {
    if (auth!.currentUser != null) {
      return dishes!.doc(id).get();
    }
    return false;
  }

  Future getLeaderId(String? id) async {
    if (auth!.currentUser != null) {
      return leaders!.doc(id).get();
    }
    return false;
  }

  getPromotions() {
    return FirebaseFirestore.instance
        .collection('promotions')
        .where('promotionDate', isGreaterThan: DateTime.now())
        .where('promotionDate',
        isLessThan: DateTime.now().add(const Duration(days: 2)))
        .snapshots();
  }

  getComments() {
    return FirebaseFirestore.instance
        .collection('comments')
        .where('commentDate', isGreaterThan: DateTime.now())
        .where('commentDate',
        isLessThan: DateTime.now().add(const Duration(days: 2)))
        .snapshots();
  }
}
