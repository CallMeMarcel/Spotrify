import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:proyek_pam/screens/home_page.dart'; // Import halaman Home

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> login() async {
    try {
      await _auth.signInWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
      print("Login berhasil");
      // Navigasi ke halaman utama setelah login
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    } catch (e) {
      print("Login gagal: $e");
    }
  }

  Future<void> register() async {
    try {
      await _auth.createUserWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
      print("Registrasi berhasil");
      // Navigasi ke halaman utama setelah registrasi
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    } catch (e) {
      print("Registrasi gagal: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Mengubah background menjadi hitam
      appBar: AppBar(
        title: Text('Sign In'),
        backgroundColor: const Color.fromARGB(255, 0, 0, 0), // Warna app bar juga hitam
        elevation: 0, // Menghilangkan shadow
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Menjaga form tetap berada di tengah
          crossAxisAlignment: CrossAxisAlignment.center, // Untuk memastikan form tidak bergeser ke kiri
          children: [
            // Teks "Sign In" berada di atas form dan di tengah
            Align(
              alignment: Alignment.topCenter,
              child: Text(
                "Sign In",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 40.0), // Memberikan jarak antara teks "Sign In" dan form
            
            // Form login
            Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 0, 0, 0), // Background form hitam
                borderRadius: BorderRadius.circular(10.0),
              ),
              padding: const EdgeInsets.all(20.0), // Padding di dalam form
              child: Column(
                mainAxisSize: MainAxisSize.min, // Agar ukuran kolom menyesuaikan konten
                children: [
                  // Email field
                  TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      labelText: 'Email',
                      labelStyle: TextStyle(
                        color: const Color.fromARGB(255, 255, 255, 255),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: const Color.fromARGB(255, 8, 194, 33),
                        ),
                      ),
                    ),
                    style: TextStyle(
                      color: const Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                  SizedBox(height: 16.0), // Memberikan jarak antar TextField
                  // Password field
                  TextField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      labelStyle: TextStyle(
                        color: const Color.fromARGB(255, 255, 255, 255),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: const Color.fromARGB(255, 5, 180, 5),
                        ),
                      ),
                    ),
                    style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255)),
                  ),
                  SizedBox(height: 20.0), // Memberikan jarak antar password dan tombol
                  // Tombol Login
                  ElevatedButton(
                    onPressed: login,
                    child: Text('Login'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 26, 186, 8), // Warna background tombol
                      foregroundColor: const Color.fromARGB(255, 0, 0, 0), // Warna teks tombol
                      minimumSize: Size(double.infinity, 50), // Ukuran tombol menyesuaikan lebar
                    ),
                  ),
                  SizedBox(height: 10.0), // Jarak antara tombol login dan tombol register
                  // Tombol Register
                  ElevatedButton(
                    onPressed: register,
                    child: Text('Register'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 26, 186, 8), // Warna background tombol
                      foregroundColor: const Color.fromARGB(255, 0, 0, 0), // Warna teks tombol
                      minimumSize: Size(double.infinity, 50), // Ukuran tombol menyesuaikan lebar
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
