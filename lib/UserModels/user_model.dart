import 'dart:typed_data';

class User {
  final int? id;
  final String username;
  final String password;
  final Uint8List? profileImagePath;

  User({
    this.id,
    required this.username,
    required this.password,
    this.profileImagePath,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'username': username,
      'password': password,
      'profileImagePath': profileImagePath,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['id'],
      username: map['username'],
      password: map['password'],
      profileImagePath: map['profileImagePath'],
    );
  }
}
