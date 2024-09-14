import 'package:flutter/material.dart';
import 'package:cat3/Screen/SignIn.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cat3/firebase_options.dart';

Future<void> main() async {
 await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const MyApp());
}

class DefaultFirebaseOptions {
  // ignore: prefer_typing_uninitialized_variables
  static var currentPlatform;
}

mixin Firebase {
  static initializeApp({required FirebaseOptions options}) {}
}

class FirebaseOptions {
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Josh Auth',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SignInPage(),
    );
  }
}

