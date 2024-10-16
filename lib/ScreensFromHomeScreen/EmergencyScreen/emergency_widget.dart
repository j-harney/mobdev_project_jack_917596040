import 'package:flutter/material.dart';
import 'package:project1_mobdev_jack_917596040/CreatorsForScreens/appBarCreator_widget.dart';
import 'package:project1_mobdev_jack_917596040/CreatorsForScreens/drawercreator_widget.dart';

class EmergencyScreen extends StatelessWidget {
  const EmergencyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    DrawerCreator drawerCreator = DrawerCreator();
    AppBarCreator appBarCreator = AppBarCreator();

    return Scaffold(
        drawer: drawerCreator.createDrawer(context, 'Emergency'),
        appBar: appBarCreator.createAppBar(context, 'Emergency'),
        body: Expanded(
            child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Expanded(
                          child: Container(
                              margin: EdgeInsets.all(5),
                              child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                      side: const BorderSide(
                                          width: 1, color: Colors.black),
                                      backgroundColor:
                                          const Color.fromARGB(255, 255, 0, 0),
                                      shape: const BeveledRectangleBorder(
                                          borderRadius:
                                              BorderRadius.all(Radius.zero))),
                                  child: const Text('Family Emergency',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Color.fromARGB(
                                              255, 255, 255, 255)))))),
                      Expanded(
                          child: Container(
                              margin: EdgeInsets.all(5),
                              child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                      side: const BorderSide(
                                          width: 1, color: Colors.black),
                                      backgroundColor: const Color.fromARGB(
                                          255, 0, 162, 255),
                                      shape: const BeveledRectangleBorder(
                                          borderRadius:
                                              BorderRadius.all(Radius.zero))),
                                  child: const Text('Medical Emergency',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Color.fromARGB(
                                              255, 255, 255, 255)))))),
                    ]))));
  }
}
