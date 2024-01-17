import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/views/home.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 5),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Home()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Flutter', style: GoogleFonts.akayaKanadaka( fontSize: 30 , fontWeight: FontWeight.bold, color: Colors.black),), 
          Image.asset('assets/images/news.gif'), 
          Text('News', style: GoogleFonts.akayaKanadaka( fontSize: 30 , fontWeight: FontWeight.bold, color: Colors.black)), 

        ],
      ),
    );
  }
}