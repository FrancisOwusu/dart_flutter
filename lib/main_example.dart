import 'package:flutter/material.dart';
// import 'package:my_awesome_app/src/common_widgets/MyCenterStatelessWidget.dart';
import 'package:my_awesome_app/src/common_widgets/MyExpandedWidget.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  static const String _title = widgetExpandedTitle;
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatelessWidget(),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Center Example')),
      body: buildExpandedWidget(context),
      // body: buildRowWidget(),
      // body: buildCenterWidget(),
    );
  }
}
