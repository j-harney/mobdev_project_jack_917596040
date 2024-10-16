import 'package:flutter/material.dart';

class MealsScreen extends StatelessWidget {
  const MealsScreen({super.key});

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
            ]),
        body: Column(children: <Widget>[
          Expanded(
              child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Expanded(
                            child: Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.black, width: 3)),
                                margin: const EdgeInsets.all(20),
                                alignment: Alignment.center,
                                child: const Text('Image'))),
                        Expanded(
                            child: Container(
                                margin: const EdgeInsets.all(20),
                                child: Column(children: <Widget>[
                                  Container(
                                      margin: const EdgeInsets.fromLTRB(
                                          0, 5, 0, 10),
                                      child: const Text(
                                          'Random Meal of The Week',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold))),
                                  Container(
                                      child: const Text(
                                          'This is a description of the random meal of the week.',
                                          style: TextStyle(fontSize: 12)))
                                ])))
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
                                        backgroundColor: const Color.fromARGB(
                                            255, 255, 145, 0),
                                        shape: const BeveledRectangleBorder(
                                            borderRadius:
                                                BorderRadius.all(Radius.zero))),
                                    child: const Text('Random Meal',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 24,
                                            color: Color.fromARGB(
                                                255, 0, 0, 0)))))),
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
                                            255, 255, 0, 0),
                                        shape: const BeveledRectangleBorder(
                                            borderRadius:
                                                BorderRadius.all(Radius.zero))),
                                    child: const Text('Meat Meals',
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
                                            255, 10, 107, 51),
                                        shape: const BeveledRectangleBorder(
                                            borderRadius:
                                                BorderRadius.all(Radius.zero))),
                                    child: const Text('Veggie Meals',
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
                                            255, 23, 149, 187),
                                        shape: const BeveledRectangleBorder(
                                            borderRadius:
                                                BorderRadius.all(Radius.zero))),
                                    child: const Text('Other Meals',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: Color.fromARGB(
                                                255, 255, 255, 255))))))
                      ])))
        ]));
  }
}
