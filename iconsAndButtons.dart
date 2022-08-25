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
      body: Center(
        child: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.alternate_email),
          color: Colors.amber,
        ),
        // RaisedButton.icon(
        //   onPressed: (){},
        //   icon: const Icon(
        //     Icons.mail
        //   ),
        //   label: const Text("Mail me"),
        //   color: Colors.amber,
        // ),
        // FlatButton(
        //   onPressed: () {
        //     print("button was clicked");
        //   },
        //   color: Colors.lightBlue,
        //   child: const Text("Click me"),
        // ),
        // Icon(
        //   Icons.airport_shuttle,
        //   color: Colors.lightBlue,
        //   size: 50.0,
        // ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {  },
        backgroundColor: Colors.yellow,
        child: const Text('click'),
      ),
    );
  }
}

