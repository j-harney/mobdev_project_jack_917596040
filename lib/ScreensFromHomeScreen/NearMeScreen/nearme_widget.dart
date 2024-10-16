import 'package:flutter/material.dart';
import 'package:project1_mobdev_jack_917596040/CreatorsForScreens/appBarCreator_widget.dart';
import 'package:project1_mobdev_jack_917596040/CreatorsForScreens/drawercreator_widget.dart';

class NearMeScreen extends StatefulWidget {
  const NearMeScreen({super.key});

  @override
  State<NearMeScreen> createState() => _NearMeScreenState();
}

class _NearMeScreenState extends State<NearMeScreen> {
  @override
  Widget build(BuildContext context) {
    DrawerCreator drawerCreator = DrawerCreator();
    AppBarCreator appBarCreator = AppBarCreator();

    return Scaffold(
      drawer: drawerCreator.createDrawer(context, 'Near Me'),
      appBar: appBarCreator.createAppBar(context, 'Near Me'),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
                child: Container(
                    margin: const EdgeInsets.all(20),
                    child: Container(
                        margin: const EdgeInsets.fromLTRB(0, 5, 0, 10),
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                side: const BorderSide(
                                    width: 1, color: Colors.black),
                                backgroundColor:
                                    const Color.fromARGB(255, 0, 0, 0),
                                shape: const BeveledRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.zero))),
                            child: const Text('Find my facility',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold)))))),
            Expanded(
                child: Container(
                    margin: const EdgeInsets.all(20),
                    child: Container(
                        margin: const EdgeInsets.fromLTRB(0, 5, 0, 10),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black)),
                        child:
                            Image.network('https://i.imgur.com/tfmTXAk.png'))))
          ]),
    );
  }
}
