import 'package:auto_size_text/auto_size_text.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';
import 'package:project1_mobdev_jack_917596040/Firebase/signout_button_widget.dart'
    as button;

class AppBarCreator {
  final FirebaseAuth auth = FirebaseAuth.instance;

  AppBar createAppBar(BuildContext context, String route) {
    String? username;

    if (auth.currentUser?.displayName == null) {
      username = auth.currentUser!.email;
    } else {
      username = auth.currentUser!.displayName;
    }

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
          title: AutoSizeText('ListenToElders | $route',
              style: const TextStyle(fontSize: 24, color: Colors.white),
              maxLines: 1,
              minFontSize: 16,
              maxFontSize: 24,
              overflowReplacement: AutoSizeText('LTE | $route',
                  style: const TextStyle(fontSize: 24, color: Colors.white),
                  maxLines: 1,
                  minFontSize: 12,
                  maxFontSize: 24)),
          centerTitle: true,
          actions: <Widget>[
            Container(
                margin: const EdgeInsets.all(2),
                child: Text('Hello, $username',
                    style: const TextStyle(color: Colors.white))),
            (const button.SignOutButton()),
            IconButton(
                icon: const Icon(
                  Icons.person,
                  color: Colors.white,
                  size: 25,
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute<ProfileScreen>(
                          builder: (context) => ProfileScreen(
                                  appBar: createProfileAppBar(context),
                                  actions: [
                                    SignedOutAction((context) {
                                      Navigator.of(context)
                                          .pushReplacementNamed('/');
                                    })
                                  ])));
                }),
          ]);
    } else {
      newAppBar = AppBar(
          backgroundColor: Colors.black,
          title: AutoSizeText('ListenToElders | $route',
              style: const TextStyle(fontSize: 24, color: Colors.white),
              maxLines: 1,
              minFontSize: 16,
              maxFontSize: 24,
              overflowReplacement: AutoSizeText(route,
                  style: const TextStyle(fontSize: 24, color: Colors.white),
                  maxLines: 1,
                  minFontSize: 12,
                  maxFontSize: 24)),
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
              icon: const Icon(Icons.arrow_back, color: Colors.white, size: 30),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            Text('Hello, $username',
                style: const TextStyle(color: Colors.white)),
            (const button.SignOutButton()),
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
                                      Navigator.of(context)
                                          .pushReplacementNamed('/');
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
        title:
            const Text('User Profile', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.white, size: 25),
              onPressed: () {
                Navigator.of(context).pop();
              })
        ]);
    return profileAppBar;
  }
}
