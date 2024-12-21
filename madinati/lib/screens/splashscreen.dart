import 'package:flutter/material.dart';
import '../utils/routes.dart';
import './homescreen.dart';
import '../screens/layout/layout.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
   @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2),(){
      navigateTo(context, Layout());
    }
    );
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.white, Color(0xFF358CC1)],
             stops: [0.2, 1.9],
          ),
        ),
        
        child: Center(
          child: Image.asset(
            'assets/logo.png',
            width: 200,
            height: 200,
          ),
        ),
      ),
    );
  }
}
