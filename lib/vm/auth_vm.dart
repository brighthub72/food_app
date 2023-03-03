import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:food_app/utils/constants.dart';
import 'package:http/http.dart' as http;

class AuthVm extends ChangeNotifier {
  String name = 'Abel';
  bool loading = false;

  final username = TextEditingController();
  final password = TextEditingController();

  changeName() {
    name = username.text;
    notifyListeners();
    print('name changed');
  }

  login(context) async {
    loading = true;
    notifyListeners();

    final url = Uri.parse("$baseUrl/auth/login");
    final res = await http.post(url,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({
          'username': username.text,
          'password': password.text,
        }));

    final result = json.decode(res.body);
    
    // print(res.body);
    loading = false;
    notifyListeners();
    if (result['token'] != null) {
      ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Login Successful'),
      ),
    );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(result['message']),
      ),
    );
    }

    
  }

  
}
