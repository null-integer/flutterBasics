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
      body: const Center(
        child: Image(
          image: AssetImage('assets/gigachad.jpeg'),
          //image: NetworkImage('https://phantom-marca.unidadeditorial.es/d0c8c393b5c4db89208aae4a92da1e8a/f/jpg/assets/multimedia/imagenes/2021/03/28/16169441591095.jpg'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {  },
        backgroundColor: Colors.yellow,
        child: const Text('click'),
      ),
    );
  }
}

