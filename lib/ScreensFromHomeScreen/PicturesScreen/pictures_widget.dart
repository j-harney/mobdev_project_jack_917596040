import 'package:flutter/material.dart';
import 'package:project1_mobdev_jack_917596040/CreatorsForScreens/appBarCreator_widget.dart';
import 'package:project1_mobdev_jack_917596040/CreatorsForScreens/drawercreator_widget.dart';

class PicturesScreen extends StatefulWidget {
  const PicturesScreen({super.key});

  @override
  State<PicturesScreen> createState() => _PicturesScreenState();
}

class _PicturesScreenState extends State<PicturesScreen> {
  @override
  Widget build(BuildContext context) {
    DrawerCreator drawerCreator = DrawerCreator();
    AppBarCreator appBarCreator = AppBarCreator();

    return Scaffold(
        drawer: drawerCreator.createDrawer(context, 'Pictures'),
        appBar: appBarCreator.createAppBar(context, 'Pictures'),
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                  height: 100,
                  width: 100,
                  margin: const EdgeInsets.all(5),
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          side: const BorderSide(width: 1, color: Colors.black),
                          backgroundColor: const Color.fromARGB(255, 0, 0, 0),
                          shape: const BeveledRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.zero))),
                      child: const Text('Take Picture',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20,
                              color: Color.fromARGB(255, 255, 255, 255))))),
              Expanded(
                  child: Container(
                      margin: const EdgeInsets.all(20),
                      child: Container(
                          margin: const EdgeInsets.fromLTRB(0, 5, 0, 10),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black))))),
              Container(
                  height: 100,
                  width: 100,
                  margin: const EdgeInsets.all(5),
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          side: const BorderSide(width: 1, color: Colors.black),
                          backgroundColor: const Color.fromARGB(255, 0, 0, 0),
                          shape: const BeveledRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.zero))),
                      child: const Text('Save Picture',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20,
                              color: Color.fromARGB(255, 255, 255, 255)))))
            ]));
  }
}
