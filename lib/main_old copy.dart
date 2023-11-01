import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    const title = 'Image Widget 25';
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(title),
        ),
        body: MyContainerWidget(),
      ),
    );
  }
}

class DataItem {
  final String title;
  final String subtitle;
  final String url;
  const DataItem(
      {required this.title, required this.subtitle, required this.url});
}

class DataView {
  final DataItem item = const DataItem(
      title: 'Awesome App',
      subtitle: 'subtitle',
      url: 'https://oreil.ly/O4PEn');
}

class MyContainerWidget extends StatelessWidget {
  MyContainerWidget({Key? key}) : super(key: key);
  final DataView data = DataView();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 180,
      color: Colors.black,
      child: Column(
        children: [
          Image.network(data.item.url),
          Text(
            data.item.title,
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          Text(
            data.item.subtitle,
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
