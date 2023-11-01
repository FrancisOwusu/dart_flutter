import 'package:flutter/material.dart';

class ListTileItem {
  final String monthItem;
  const ListTileItem({
    required this.monthItem,
  });
}

class ListDataItems {
  final List<String> monthItems = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December',
  ];
  ListDataItems();
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    const title = 'MyAwesomeApp';
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(title),
        ),
        // body: MyListView(),
        body: MyListViewHorinzontal(),
      ),
    );
  }
}

class MyListView extends StatelessWidget {
  MyListView();
  final ListDataItems item = ListDataItems();
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: item.monthItems.length,
      itemBuilder: (context, index) {
        return ListTile(title: Text(item.monthItems[index]));
      },
    );
  }
}

class MyListViewHorinzontal extends StatelessWidget {
  MyListViewHorinzontal({Key? key}) : super(key: key);
  final ListDataItems item = ListDataItems();
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: item.monthItems.length,
      itemBuilder: (context, index) {
        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(item.monthItems[index]),
            const SizedBox(
              width: 10.0,
            ),
          ],
        );
      },
    );
  }
}
