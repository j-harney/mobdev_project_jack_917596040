import 'package:flutter/material.dart';
import 'package:project1_mobdev_jack_917596040/DrawerCreator/drawerCreator_widget.dart';

class MealsScreen extends StatelessWidget {
  const MealsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    DrawerCreator drawerCreator = DrawerCreator();

    return Scaffold(
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: drawerCreator.createDrawer(context, 'Meals'),
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
            ]),
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
                    Container(
                        child: const Text(
                            'This is a description of the random meal of the week.',
                            style: TextStyle(fontSize: 16))),
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
                                margin: EdgeInsets.fromLTRB(10, 0, 20, 0),
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
                                margin: EdgeInsets.all(5),
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
                                    child: const Text('Breakfast',
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
                                margin: EdgeInsets.all(5),
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
