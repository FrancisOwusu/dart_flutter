import 'package:flutter/material.dart';

const widgetExpandedTitle = "Expanded Widget";
Widget buildExpandedWidget(BuildContext context) {
  return Column(
    children: [
      Expanded(
        child: Container(
          color: Colors.red,
        ),
      ),
      Expanded(
          child: Container(
        color: Colors.transparent,
        child: Center(
          child: RichText(
            text: const TextSpan(
              text: 'Luxembourg',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: Colors.grey,
              ),
            ),
          ),
        ),
      )),
      Expanded(
        child: Container(
          color: Colors.blue,
        ),
      ),
    ],
  );
}
