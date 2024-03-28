import 'package:flutter/material.dart';
import './sign_up_page.dart';
import 'profile_page.dart';
import './homepage.dart';
import "post_ride_page.dart";
import "./test_page.dart";
import './all_rides.dart';
import "./all_users.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'jumpIn',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green.shade900),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'jumpIn'),
      routes: {
        "/signup" : (context) => const SignUpPage(),
        '/profile': (context) => const ProfileScreen(),
        "/postride" : (context) => const PostRidePage(),
        "/test": (context) => const TestPage(),
        "/allrides": (context) => const GetRide(),
        "/allusers": (context) => const GetUser(),
        }
    );
  }
} 
