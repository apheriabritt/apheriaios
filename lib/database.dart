import 'user.dart';
import 'username.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {

  final String uid;
  DatabaseService({this.uid});

  //collection reference
  final CollectionReference apheriaCollection = Firestore.instance.collection('userInfo');

  Future updateUserData(String username) async {
    return await apheriaCollection.document(uid).setData({
      'username': username,
    });
  }

  //username list from snapshot
  List<Username> _usernameListFromSnapshot(QuerySnapshot snapshot) {
    return snapshot.documents.map((doc){
      return Username(
        username: doc.data['username'] ?? '',
      );
    }).toList();
  }
//user data from snapshot
  UserData _userDataFromSnapshot(DocumentSnapshot snapshot) {
    return UserData(
      uid: uid,
      username: snapshot.data['username'],
    );
  }
  //get user info stream
  Stream<List<Username>> get userInfo {
    return apheriaCollection.snapshots()
        .map(_usernameListFromSnapshot);
  }

// get user doc stream
  Stream<UserData> get userData {
    return apheriaCollection.document(uid).snapshots()
        .map(_userDataFromSnapshot);
  }
}