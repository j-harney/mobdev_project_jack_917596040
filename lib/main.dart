import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:project1_mobdev_jack_917596040/Firebase/auth_gate.dart';
import 'package:project1_mobdev_jack_917596040/Firebase/firebase_options.dart';
import 'package:project1_mobdev_jack_917596040/ScreensFromHomeScreen/CalendarScreen/calendar_widget.dart';
import 'package:project1_mobdev_jack_917596040/ScreensFromHomeScreen/EmergencyScreen/emergency_widget.dart';
import 'package:project1_mobdev_jack_917596040/ScreensFromHomeScreen/MealsScreen/meals_widget.dart';
import 'package:project1_mobdev_jack_917596040/ScreensFromHomeScreen/NearMeScreen/nearme_widget.dart';
import 'package:project1_mobdev_jack_917596040/ScreensFromHomeScreen/OtherHelpScreen/otherhelp_widget.dart';
import 'package:project1_mobdev_jack_917596040/ScreensFromHomeScreen/PicturesScreen/pictures_widget.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Login Page', home: AuthGate(), routes: {
      '/meals': (context) => const MealsScreen(),
      '/nearme': (context) => const NearMeScreen(),
      '/calendar': (context) => const CalendarScreen(),
      '/otherhelp': (context) => const OtherHelpScreen(),
      '/emergency': (context) => const EmergencyScreen(),
      '/pictures': (context) => const PicturesScreen()
    });
  }
}
