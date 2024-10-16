import 'package:flutter/material.dart';
import 'package:project1_mobdev_jack_917596040/DrawerCreator/drawerCreator_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    DrawerCreator drawerCreator = DrawerCreator();

    List<String> buttonsText = [
      'Meals',
      'Other Help',
      'Pictures',
      'Near Me',
      'Calendar',
      'Emergency',
    ];

    List<Color> buttonsColor = [
      const Color.fromARGB(255, 255, 155, 4),
      const Color.fromARGB(255, 89, 165, 128),
      const Color.fromARGB(255, 52, 117, 228),
      const Color.fromARGB(255, 85, 85, 85),
      const Color.fromARGB(137, 32, 32, 32),
      const Color.fromARGB(255, 255, 27, 11)
    ];

    List<String> buttonsNoSpacesText = [];

    for (int i = 0; i < buttonsText.length; i++) {
      buttonsNoSpacesText.add(buttonsText[i].replaceAll(' ', '').toLowerCase());
      buttonsNoSpacesText[i] = buttonsNoSpacesText[i]
          .padLeft(buttonsNoSpacesText[i].length + 1, '/');
    }

    List<Widget> buttons = [];

    for (int i = 0; i < buttonsText.length; i++) {
      buttons.add(Expanded(
          child: Container(
              margin: const EdgeInsets.all(5),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, buttonsNoSpacesText[i]);
                  },
                  style: ElevatedButton.styleFrom(
                      side: const BorderSide(width: 1, color: Colors.black),
                      backgroundColor: buttonsColor[i],
                      shape: const BeveledRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.zero))),
                  child: Text(buttonsText[i],
                      style: const TextStyle(
                          fontSize: 24, color: Colors.white))))));
    }

    return Scaffold(
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: drawerCreator.createDrawer(context, 'Home'),
          ),
        ),
        appBar: AppBar(
          leading: Builder(builder: (context) {
            return IconButton(
                icon: const Icon(Icons.menu, color: Colors.white),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                });
          }),
          backgroundColor: Colors.black,
          title: const Text(
              style: TextStyle(fontSize: 24, color: Colors.white),
              'ListenToElders  |   Home'),
          centerTitle: true,
        ),
        body: Column(children: <Widget>[
          Expanded(
              child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: buttons.sublist(0, 2)))),
          Expanded(
              child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: buttons.sublist(2, 4)))),
          Expanded(
              child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: buttons.sublist(4, 6))))
        ]));
  }
}
