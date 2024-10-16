import 'package:firebase_auth/firebase_auth.dart' as fba;
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';

class SignOutButton extends StatelessWidget {
  /// {@macro ui.auth.auth_controller.auth}
  final fba.FirebaseAuth? auth;

  /// {@macro ui.shared.widgets.button_variant}
  final ButtonVariant variant;

  /// {@macro ui.auth.widgets.sign_out_button}
  const SignOutButton({
    super.key,
    this.auth,
    this.variant = ButtonVariant.filled,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            side: const BorderSide(width: 1, color: Colors.black),
            backgroundColor: Colors.black,
            shape: const BeveledRectangleBorder(
                borderRadius: BorderRadius.all(Radius.zero))),
        onPressed: () {
          FirebaseUIAuth.signOut(context: context, auth: auth);
          Navigator.pushReplacementNamed(context, '/');
        },
        child: const Text("Sign Out", style: TextStyle(color: Colors.white)));
  }
}
