class UserModel {
  final String uid;
  final String username;
  final String email;

  UserModel({required this.uid, required this.username, required this.email});

  factory UserModel.fromFirestore(Map<String, dynamic> data, String uid) {
    return UserModel(
      uid: uid,
      username: data['userName'] ?? 'Unknown',
      email: data['userEmail'] ?? 'Unknown',
    );
  }

  // Convert UserModel to Map (for saving in SharedPreferences)
  Map<String, String> toMap() {
    return {
      'username': username,
      'email': email,
    };
  }
}
