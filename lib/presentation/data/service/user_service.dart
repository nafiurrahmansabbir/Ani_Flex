import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../model/user_model.dart';

import '../shared_pregs_helper_fetch_user_info.dart';

class UserService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<UserModel?> fetchUserById() async {
    User? currentUser = _auth.currentUser;
    if (currentUser == null) return null;

    try {
      DocumentSnapshot userDoc =
      await _firestore.collection('users').doc(currentUser.uid).get();

      if (userDoc.exists) {
        UserModel user =
        UserModel.fromFirestore(userDoc.data() as Map<String, dynamic>, currentUser.uid);

        // Save user data in local storage
        await SharedPrefsHelperFetchUserInfo.saveUserData(user.username, user.email);

        return user;
      } else {
        return null;
      }
    } catch (e) {
      print("Error fetching user: $e");
      return null;
    }
  }

  // Load user data from SharedPreferences first
  Future<UserModel?> loadUserData() async {
    Map<String, String> savedData = await SharedPrefsHelperFetchUserInfo.getUserData();

    if (savedData['username']!.isNotEmpty) {
      return UserModel(
        uid: _auth.currentUser?.uid ?? '',
        username: savedData['username']??'',
        email: savedData['email']??'',
      );
    } else {
      return fetchUserById();
    }
  }

  Future<void> clearUserData() async {
    await _auth.signOut(); // Firebase logout
    await SharedPrefsHelperFetchUserInfo.clearUserData(); // Clear local storage
  }
}
