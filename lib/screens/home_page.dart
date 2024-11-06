import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:proyek_pam/core/configs/theme/app_theme.dart';
import 'package:proyek_pam/screens/auth/login_page.dart';





class HomePage extends StatelessWidget {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  void logout(BuildContext context) async {
    await _auth.signOut();
    // Navigasi ke halaman login setelah logout
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => LoginPage()),
    );
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightTheme,
      home: Container(),
    );
  }
}
