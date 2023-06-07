import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  final String? uid;
  DatabaseService({this.uid});

  // reference for our collections
  final CollectionReference userCollection =
      FirebaseFirestore.instance.collection("users");

  // saving the userdata
  Future savingUserData(String fullName, String email, String photo) async {
    return await userCollection.doc(uid).set({
      "fullName": fullName,
      "email": email,
      "photo": photo,
      "uid": uid,
    });
  }

  // getting user data
  Future gettingUserData(String email) async {
    QuerySnapshot snapshot =
        await userCollection.where("email", isEqualTo: email).get();
    return snapshot;
  }

  // getting the chats
  getChats(String uid) async {
    return userCollection
        .doc(uid)
        .collection("messages")
        .orderBy("time")
        .snapshots();
  }

}
