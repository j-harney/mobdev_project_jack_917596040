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
        appBar: appBarCreator.createAppBar(context, 'Other Help'));
  }
}
