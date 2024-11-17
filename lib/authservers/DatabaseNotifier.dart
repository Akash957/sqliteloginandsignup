import 'package:flutter/material.dart';
import '../UserModels/user_model.dart';
import '../DatabaseHelper/database_helper.dart';

class DatabaseNotifier extends ChangeNotifier {
  final DatabaseHelper _databaseHelper = DatabaseHelper.instance;

  User? _currentUser;

  User? get currentUser => _currentUser;

  Future<void> signup(User user) async {
    await _databaseHelper.signup(user);
    notifyListeners();
  }

  Future<bool> login(String username, String password) async {
    final user = await _databaseHelper.login(username, password);
    if (user != null) {
      _currentUser = user;
      notifyListeners();
      return true;
    }
    return false;
  }

  void logout() {
    _currentUser = null;
    notifyListeners();
  }
}
