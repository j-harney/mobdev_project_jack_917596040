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

  List<Widget> createDrawer(BuildContext context, String route) {
    List<Widget> newDrawer = [];
    newDrawer.add(SizedBox(
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
        newDrawer.add(ListTile(
            title: Text(screenName),
            onTap: () {
              Navigator.popAndPushNamed(context, routeName);
            }));
      }
    }
    return newDrawer;
  }
}
