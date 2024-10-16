import 'package:flutter/material.dart';
import 'package:project1_mobdev_jack_917596040/CreatorsForScreens/appBarCreator_widget.dart';
import 'package:project1_mobdev_jack_917596040/CreatorsForScreens/drawercreator_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    DrawerCreator drawerCreator = DrawerCreator();
    AppBarCreator appBarCreator = AppBarCreator();

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
      const Color.fromARGB(255, 22, 22, 22),
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
        drawer: drawerCreator.createDrawer(context, 'Home'),
        appBar: appBarCreator.createAppBar(context, 'Home'),
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
