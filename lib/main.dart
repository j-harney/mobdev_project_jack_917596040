import 'package:flutter/material.dart';
import 'package:project1_mobdev_jack_917596040/ScreensFromHomeScreen/MealsScreen/meals_widget.dart';
import 'LoginScreen/login_widget.dart';
import 'HomeScreen/home_widget.dart';

void main() {
  runApp(MaterialApp(title: 'Login Page', initialRoute: '/', routes: {
    '/': (context) => const LoginScreen(),
    '/home': (context) => const HomeScreen(),
    '/meals': (context) => const MealsScreen(),
  }));
}
