import 'package:flutter/material.dart';
import 'package:project1_mobdev_jack_917596040/CreatorsForScreens/appBarCreator_widget.dart';
import 'package:project1_mobdev_jack_917596040/CreatorsForScreens/drawercreator_widget.dart';

class MealsScreen extends StatefulWidget {
  const MealsScreen({super.key});

  @override
  State<MealsScreen> createState() => _MealsScreenState();
}

class _MealsScreenState extends State<MealsScreen> {
  @override
  Widget build(BuildContext context) {
    DrawerCreator drawerCreator = DrawerCreator();
    AppBarCreator appBarCreator = AppBarCreator();

    return Scaffold(
        drawer: drawerCreator.createDrawer(context, 'Meals'),
        appBar: appBarCreator.createAppBar(context, 'Meals'),
        body: Column(children: <Widget>[
          Expanded(
              child: Container(
                  margin: const EdgeInsets.all(20),
                  child: Column(children: <Widget>[
                    Container(
                        margin: const EdgeInsets.fromLTRB(0, 5, 0, 10),
                        child: const Text('Random Meal of The Week',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold))),
                    const Text(
                        'This is a description of the random meal of the week.',
                        style: TextStyle(fontSize: 16)),
                  ]))),
          Expanded(
              child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Expanded(
                            child: Container(
                                margin: const EdgeInsets.fromLTRB(20, 0, 10, 0),
                                child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                        side: const BorderSide(
                                            width: 1, color: Colors.black),
                                        backgroundColor: Colors.orange,
                                        shape: const BeveledRectangleBorder(
                                            borderRadius:
                                                BorderRadius.all(Radius.zero))),
                                    child: const Text('Random Meal',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 24,
                                            color: Color.fromARGB(
                                                255, 255, 255, 255)))))),
                        Expanded(
                            child: Container(
                                margin: const EdgeInsets.fromLTRB(10, 0, 20, 0),
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
                                    child: const Text('Order Meal',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 24,
                                            color: Color.fromARGB(
                                                255, 255, 255, 255))))))
                      ]))),
          Expanded(
              child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Expanded(
                            child: Container(
                                margin: const EdgeInsets.all(5),
                                child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                        side: const BorderSide(
                                            width: 1, color: Colors.black),
                                        backgroundColor: const Color.fromARGB(
                                            255, 82, 153, 0),
                                        shape: const BeveledRectangleBorder(
                                            borderRadius:
                                                BorderRadius.all(Radius.zero))),
                                    child: const FittedBox(
                                        child: Text('Breakfast',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Color.fromARGB(
                                                    255, 255, 255, 255))))))),
                        Expanded(
                            child: Container(
                                margin: const EdgeInsets.all(5),
                                child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                        side: const BorderSide(
                                            width: 1, color: Colors.black),
                                        backgroundColor: const Color.fromARGB(
                                            255, 32, 135, 194),
                                        shape: const BeveledRectangleBorder(
                                            borderRadius:
                                                BorderRadius.all(Radius.zero))),
                                    child: const Text('Lunch',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: Color.fromARGB(
                                                255, 255, 255, 255)))))),
                        Expanded(
                            child: Container(
                                margin: const EdgeInsets.all(5),
                                child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                        side: const BorderSide(
                                            width: 1, color: Colors.black),
                                        backgroundColor: const Color.fromARGB(
                                            255, 158, 28, 99),
                                        shape: const BeveledRectangleBorder(
                                            borderRadius:
                                                BorderRadius.all(Radius.zero))),
                                    child: const Text('Dinner',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: Color.fromARGB(
                                                255, 255, 255, 255))))))
                      ])))
        ]));
  }
}
