import 'package:flutter/material.dart';

class DrawerCreator {
  List<String> routes = [
    'Home',
    'Meals',
    'Other Help',
    'Pictures',
    'Near Me',
    'Calendar',
    'Emergency',
  ];

  Drawer createDrawer(BuildContext context, String route) {
    List<Widget> widgets = [];
    widgets.add(SizedBox(
        height: 100,
        child: DrawerHeader(
          decoration: const BoxDecoration(
            color: Colors.black,
          ),
          child: Container(
              alignment: Alignment.center,
              child: const Text(
                  style: TextStyle(fontSize: 24, color: Colors.white),
                  'ListenToElders')),
        )));
    for (var screenName in routes) {
      if (screenName != route) {
        var routeName = screenName.replaceAll(' ', '').toLowerCase();
        routeName = routeName.padLeft(routeName.length + 1, '/');
        if (routeName == "/home") {
          routeName = "/";
        }
        widgets.add(ListTile(
            title: Text(screenName),
            onTap: () {
              Navigator.popAndPushNamed(context, routeName);
            }));
      }
    }
    Drawer newDrawer =
        Drawer(child: ListView(padding: EdgeInsets.zero, children: widgets));
    return newDrawer;
  }
}
