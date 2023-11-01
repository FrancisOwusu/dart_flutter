import 'package:flutter/material.dart';

const widgetRowTitle = "Row Widget";
Widget buildRowWidget() {
  return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          width: 5,
          color: Colors.transparent,
        ),
        Expanded(
          child: Container(
            height: 50,
            width: 200,
            color: Colors.red,
            child: const Center(
              child: Text("50"),
            ),
          ),
        ),
        Expanded(
          child: Container(
            height: 100,
            width: 200,
            color: Colors.green,
            child: const Center(
              child: Text("100"),
            ),
          ),
        ),
        Expanded(
          child: Container(
            height: 200,
            width: 200,
            color: Colors.orange,
            child: const Center(
              child: Text("200"),
            ),
          ),
        ),
        Container(
          width: 5,
          color: Colors.transparent,
        ),
      ]);
}
