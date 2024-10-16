import 'package:flutter/material.dart';

class NearMeScreen extends StatelessWidget {
  const NearMeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              SizedBox(
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
                  )),
              ListTile(
                title: const Text('Home'),
                onTap: () {
                  Navigator.popAndPushNamed(context, '/home');
                },
              ),
              ListTile(
                title: const Text('Other Help'),
                onTap: () {
                  // Update the state of the app
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        appBar: AppBar(
            backgroundColor: Colors.black,
            title: const Text(
                style: TextStyle(fontSize: 24, color: Colors.white),
                'ListenToElders  |  Meals'),
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
            ]));
  }
}
