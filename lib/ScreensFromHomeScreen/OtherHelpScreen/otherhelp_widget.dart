import 'package:flutter/material.dart';
import 'package:project1_mobdev_jack_917596040/CreatorsForScreens/appBarCreator_widget.dart';
import 'package:project1_mobdev_jack_917596040/CreatorsForScreens/drawercreator_widget.dart';

class OtherHelpScreen extends StatelessWidget {
  const OtherHelpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    DrawerCreator drawerCreator = DrawerCreator();
    AppBarCreator appBarCreator = AppBarCreator();

    return Scaffold(
        drawer: drawerCreator.createDrawer(context, 'Other Help'),
        appBar: appBarCreator.createAppBar(context, 'Other Help'));
  }
}
