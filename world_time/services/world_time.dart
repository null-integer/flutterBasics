import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';
class WorldTime{

  String location = '';
  String time = '';
  String flag = '';
  String url = '';

  WorldTime({required this.location, required this.flag, required this.url});

  Future<void> getData() async {

    try{
      // Uri url = Uri.parse('https://jsonplaceholder.typicode.com/todos/1');
      // Response response = await get(url);
      // Map data = jsonDecode(response.body);
      // print(data);

      //make the request
      Uri fetchUrl = Uri.parse('http://worldtimeapi.org/api/timezone/$url');
      Response response = await get(fetchUrl);
      Map data = jsonDecode(response.body);
      //print(data);
      String datetime = data['datetime'];
      String offset = data['utc_offset'].substring(1,3);
      //print(datetime);
      //print(offset);

      //create a datetime object
      DateTime now  = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offset)));

      //set time property
      time = now.toString();
    }catch(e){

      print(e);
      time = 'could not get time data';
    }


  }
}

