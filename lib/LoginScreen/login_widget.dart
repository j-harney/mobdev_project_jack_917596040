import 'package:flutter/material.dart';

// Define a custom Form widget.
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

// Define a corresponding State class.
// This class holds data related to the form.
class MyCustomFormState extends State<LoginScreen> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a `GlobalKey<FormState>`,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(title: const Text('Login')),
        body: Center(
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                // Add TextFormFields and ElevatedButton here.
                Padding(
                    padding: const EdgeInsets.fromLTRB(16, 8, 32, 8),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        icon: Icon(Icons.people_alt_sharp),
                        hintText: 'What is your username?',
                        labelText: 'Username',
                      ),
                      // The validator receives the text that the user has entered.
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter a username';
                        }
                        return null;
                      },
                    )),
                Padding(
                    padding: const EdgeInsets.fromLTRB(16, 8, 32, 8),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        icon: Icon(Icons.people_alt_sharp),
                        hintText: 'What is your password?',
                        labelText: 'Password',
                      ),
                      // The validator receives the text that the user has entered.
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter a password';
                        }
                        return null;
                      },
                    )),
                Padding(
                    padding: const EdgeInsets.fromLTRB(16, 24, 16, 8),
                    child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            Navigator.pushReplacementNamed(context, '/home');
                          }
                        },
                        style: ElevatedButton.styleFrom(
                            minimumSize: const Size(125, 45)),
                        child: const Text('Login'))),
                Padding(
                    padding: const EdgeInsets.fromLTRB(16, 12, 16, 8),
                    child: ElevatedButton(
                        onPressed: () {}, child: const Text('Sign Up'))),
                Padding(
                    padding: const EdgeInsets.fromLTRB(16, 12, 16, 8),
                    child: InkWell(
                        child: const Text('Forgot password?'), onTap: () {}))
              ],
            ),
          ),
        ));
  }
}
