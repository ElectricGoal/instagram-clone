// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_insta/resources/auth_methods.dart';

import '../models/user.dart';

class UserProvider with ChangeNotifier {
  User? _user;
  final AuthMethods _authMethods = AuthMethods();

  User get getUser => _user!;

  Future<void> refreshUser() async {
    User? user = await _authMethods.getUserDetails();
    _user = user;
    if (_user == null) {
      print('null null');
    }
    //print(_user!.username);
    notifyListeners();
  }
}
