import 'package:flutter/material.dart';
import 'package:project1_mobdev_jack_917596040/CreatorsForScreens/appBarCreator_widget.dart';
import 'package:project1_mobdev_jack_917596040/CreatorsForScreens/drawercreator_widget.dart';

class OtherHelpScreen extends StatefulWidget {
  const OtherHelpScreen({super.key});

  @override
  State<OtherHelpScreen> createState() => _OtherHelpScreenState();
}

class _OtherHelpScreenState extends State<OtherHelpScreen> {
  @override
  Widget build(BuildContext context) {
    DrawerCreator drawerCreator = DrawerCreator();
    AppBarCreator appBarCreator = AppBarCreator();

    return Scaffold(
        drawer: drawerCreator.createDrawer(context, 'Other Help'),
        appBar: appBarCreator.createAppBar(context, 'Other Help'),
        body: Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
                child: Container(
                    margin: EdgeInsets.all(5),
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            side:
                                const BorderSide(width: 1, color: Colors.black),
                            backgroundColor:
                                const Color.fromARGB(255, 204, 122, 0),
                            shape: const BeveledRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.zero))),
                        child: const FittedBox(
                            child: const Text('Help with Feeding',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Color.fromARGB(
                                        255, 255, 255, 255))))))),
            Expanded(
                child: Container(
                    margin: EdgeInsets.all(5),
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            side:
                                const BorderSide(width: 1, color: Colors.black),
                            backgroundColor:
                                const Color.fromARGB(255, 32, 135, 194),
                            shape: const BeveledRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.zero))),
                        child: const FittedBox(
                            child: const Text('Help With Medicine',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Color.fromARGB(
                                        255, 255, 255, 255))))))),
            Expanded(
                child: Container(
                    margin: EdgeInsets.all(5),
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            side:
                                const BorderSide(width: 1, color: Colors.black),
                            backgroundColor:
                                const Color.fromARGB(255, 138, 23, 61),
                            shape: const BeveledRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.zero))),
                        child: const FittedBox(
                            child: const Text('Help With Restroom',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 20,
                                    color:
                                        Color.fromARGB(255, 255, 255, 255)))))))
          ],
        )));
  }
}
