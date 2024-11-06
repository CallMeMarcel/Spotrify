import 'package:flutter/material.dart';
import 'package:proyek_pam/screens/auth/login_page.dart'; // Import halaman LoginPage

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Menunggu selama 3 detik dan kemudian navigasi ke halaman LoginPage
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginPage()), // Beralih ke halaman LoginPage
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Warna background hitam, mirip dengan tema Spotify
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Menempatkan teks di tengah
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Logo atau icon Spotify, dapat menggunakan gambar atau icon
            Icon(
              Icons.music_note, // Ganti dengan logo Spotify atau gambar jika diinginkan
              color: Colors.green, // Hijau khas Spotify
              size: 100.0, // Ukuran icon
            ),
            SizedBox(height: 20),
            // Teks "Sabar ya sayang" dengan styling
            Text(
              "Sabar yaa > <",
              style: TextStyle(
                fontSize: 24.0,
                color: Colors.white, // Teks putih untuk kontras dengan background hitam
                fontWeight: FontWeight.bold,
                fontFamily: 'Spotify', // Ganti dengan font Spotify jika diinginkan
              ),
            ),
            SizedBox(height: 20),
            // Loading indikator berputar
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.green), // Warna hijau khas Spotify
            ),
          ],
        ),
      ),
    );
  }
}
