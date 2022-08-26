import 'package:flutter/material.dart';
import 'package:myapp/services/world_time.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void setupWorldTime() async{
    WorldTime instance = WorldTime(location: 'Berlin', flag: 'gigachad.jpeg', url: 'Europe/Berlin');
    await instance.getData();
    Navigator.pushReplacementNamed(context, '/home',arguments: {
      'location': instance.location,
      'flag': instance.flag,
      'time': instance.flag,
    });

  }

  @override
  void initState() {
    super.initState();
    //getData();
    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
          padding: EdgeInsets.all(50.0),
        child: Text('loading'),
      ),
    );
  }
}
