import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('my first app'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: const Padding(
        padding: EdgeInsets.all(90.0),
        child: Text('hello'),
      ),
      // Container(
      //   padding: const EdgeInsets.all(20.0),//inside the container
      //   margin: const EdgeInsets.all(30.0),//around the container
      //   color: Colors.grey[400],
      //   child: const Text("Hello"),
      // ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {  },
        backgroundColor: Colors.yellow,
        child: const Text('click'),
      ),
    );
  }
}

