import 'dart:io' show Platform;

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tiktok_clone/constants.dart';
import 'package:tiktok_clone/views/screens/auth/login_screen.dart';
import 'package:tiktok_clone/views/screens/auth/signup_screen.dart';


 void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Platform.isAndroid
  ?await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: 'AIzaSyATac6g2Y81yLDhDXPa3ovV5Ru92JjemP8',
        appId: '1:669535519368:android:c6469662e19e152270153d',
        messagingSenderId: '669535519368',
        projectId: 'tiktok-clone-c8e5d'
    ))
  : await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TikTok Clone',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ),
      home: SignupScreen(),
    );
  }
}
