import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // static const String _title = 'Example';
  final String titleAppBar = 'AppBar Demo';

  final String _title = 'Center Widget Demo';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: MyStatelessWidget(),
      // home: Scaffold(
      //   appBar: MyAppBar(title: titleAppBar),
      // ),
    );

    // return MaterialApp(
    //   title: _title,
    //   home: MyStatelessWidget(),
    // );
  }
}

class MyStatelessWidget1 extends StatelessWidget {
  const MyStatelessWidget1({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Scaffold Example')),
      backgroundColor: Colors.blueGrey,
      bottomNavigationBar: const BottomAppBar(
        color: Colors.blueAccent,
        shape: CircularNotchedRectangle(),
        child: SizedBox(
          height: 300,
          child: Center(child: Text("bottomNavigationBar")),
        ),
      ),
      body: _buildCardWidget(),
    );
  }

  Widget _buildCardWidget() {
    return const SizedBox(
      height: 200,
      child: Card(
        child: Center(
          child: Text('Top Level Card'),
        ),
      ),
    );
  }
}

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final double sizeAppBar = 200.0;
  const MyAppBar({Key? key, required this.title}) : super(key: key);
  @override
  Size get preferredSize => Size.fromHeight(sizeAppBar);
  @override
  build(BuildContext context) {
    return AppBar(
      title: Text(title),
      backgroundColor: Colors.black,
      elevation: 10.0,
      leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
      actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.settings))],
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Center Example')),
      body: _buildCenterWidget(),
    );
  }

  Widget _buildCenterWidget() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: const [
          SizedBox(
            width: 200,
            height: 100,
            child: Card(
                color: Colors.amber, child: Center(child: Text('Developer'))),
          ),
          SizedBox(
            width: 300,
            height: 100,
            child: Card(
                color: Colors.green,
                child: Center(child: Text('Flutter Framework'))),
          ),
          SizedBox(
            width: 400,
            height: 100,
            child: Card(
                color: Colors.blue, child: Center(child: Text('Dart SDK'))),
          ),
        ],
      ),
    ); // return const Center(
    //   child: Text(
    //     "Top Five Spoken Languages - 2022",
    //     style: TextStyle(fontSize: 30, color: Colors.grey),
    //   ),
    // );
  }
}
