import 'package:flutter/material.dart';

class AppBarCreator {
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
      );
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
            )
          ]);
    }
    return newAppBar;
  }
}
