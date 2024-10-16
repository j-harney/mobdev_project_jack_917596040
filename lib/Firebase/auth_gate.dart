import 'package:firebase_auth/firebase_auth.dart' hide EmailAuthProvider;
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';
import 'package:project1_mobdev_jack_917596040/CreatorsForScreens/appbarcreator_widget.dart';
import 'package:project1_mobdev_jack_917596040/CreatorsForScreens/drawercreator_widget.dart';
import 'package:project1_mobdev_jack_917596040/HomeScreen/home_widget.dart';

class AuthGate extends StatelessWidget {
  AuthGate({super.key});

  AppBarCreator appBarCreator = AppBarCreator();
  DrawerCreator drawerCreator = DrawerCreator();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return SignInScreen(
            providers: [
              EmailAuthProvider(),
            ],
            subtitleBuilder: (context, action) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: action == AuthAction.signIn
                    ? const Text('Welcome to FlutterFire, please sign in!')
                    : const Text('Welcome to Flutterfire, please sign up!'),
              );
            },
            footerBuilder: (context, action) {
              return const Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text(
                  'By signing in, you agree to our terms and conditions.',
                  style: TextStyle(color: Colors.grey),
                ),
              );
            },
            sideBuilder: (context, shrinkOffset) {
              return Padding(
                padding: const EdgeInsets.all(20),
                child: AspectRatio(
                    aspectRatio: 1,
                    child: const Icon(Icons.holiday_village_rounded,
                        size: 300) ////0.21
                    ),
              );
            },
          );
        }
        return HomeScreen();
      },
    ));
  }
}
