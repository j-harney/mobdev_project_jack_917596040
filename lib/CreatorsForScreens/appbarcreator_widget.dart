import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';
import 'package:project1_mobdev_jack_917596040/HomeScreen/signout_button_widget.dart'
    as button;

class AppBarCreator {
  final FirebaseAuth auth = FirebaseAuth.instance;

  AppBar createAppBar(BuildContext context, String route) {
    Text titleText = Text(
        style: const TextStyle(fontSize: 24, color: Colors.white),
        'ListenToElders  |   $route');
    AppBar newAppBar;

    if (route == 'Home') {
      newAppBar = AppBar(
          leading: Builder(builder: (context) {
            return IconButton(
                icon: const Icon(Icons.menu, color: Colors.white),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                });
          }),
          backgroundColor: Colors.black,
          title: titleText,
          centerTitle: true,
          actions: <Widget>[
            Text('Hello, ${auth.currentUser?.displayName}',
                style: TextStyle(color: Colors.white)),
            (button.SignOutButton()),
            IconButton(
                icon: const Icon(Icons.person, color: Colors.white),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute<ProfileScreen>(
                          builder: (context) => ProfileScreen(
                                  appBar: createProfileAppBar(context),
                                  actions: [
                                    SignedOutAction((context) {
                                      Navigator.of(context).pop();
                                    })
                                  ])));
                }),
          ]);
    } else {
      newAppBar = AppBar(
          backgroundColor: Colors.black,
          title: titleText,
          centerTitle: true,
          leading: Builder(builder: (context) {
            return IconButton(
                icon: const Icon(Icons.menu, color: Colors.white),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                });
          }),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            Text('Hello, ${auth.currentUser?.displayName}',
                style: TextStyle(color: Colors.white)),
            (button.SignOutButton()),
            IconButton(
                icon: const Icon(Icons.person, color: Colors.white),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute<ProfileScreen>(
                          builder: (context) => ProfileScreen(
                                  appBar: createProfileAppBar(context),
                                  actions: [
                                    SignedOutAction((context) {
                                      Navigator.of(context).pop();
                                    })
                                  ])));
                })
          ]);
    }
    return newAppBar;
  }

  AppBar createProfileAppBar(BuildContext context) {
    AppBar profileAppBar;

    profileAppBar = AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        title: Text('User Profile'),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () {
                Navigator.of(context).pop();
              })
        ]);
    return profileAppBar;
  }
}
