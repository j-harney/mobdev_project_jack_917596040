import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:project1_mobdev_jack_917596040/ScreensFromHomeScreen/CalendarScreen/calendar_widget.dart';
import 'package:project1_mobdev_jack_917596040/ScreensFromHomeScreen/EmergencyScreen/emergency_widget.dart';
import 'package:project1_mobdev_jack_917596040/ScreensFromHomeScreen/MealsScreen/meals_widget.dart';
import 'package:project1_mobdev_jack_917596040/ScreensFromHomeScreen/NearMeScreen/nearme_widget.dart';
import 'package:project1_mobdev_jack_917596040/ScreensFromHomeScreen/OtherHelpScreen/otherhelp_widget.dart';
import 'package:project1_mobdev_jack_917596040/ScreensFromHomeScreen/PicturesScreen/pictures_widget.dart';
import 'LoginScreen/login_widget.dart';
import 'HomeScreen/home_widget.dart';

void main() {
  runApp(MaterialApp(title: 'Login Page', initialRoute: '/', routes: {
    '/': (context) => const LoginScreen(),
    '/home': (context) => const HomeScreen(),
    '/meals': (context) => const MealsScreen(),
    '/nearme': (context) => const NearMeScreen(),
    '/calendar': (context) => const CalendarScreen(),
    '/otherhelp': (context) => const OtherHelpScreen(),
    '/emergency': (context) => const EmergencyScreen(),
    '/pictures': (context) => const PicturesScreen(),
  }));
}
