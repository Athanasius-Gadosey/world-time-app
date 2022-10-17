import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class worldTime {
  String location; //this shows the location name of the UI
  late String time; //this signifies the time in the location
  String flag; //url to an asset flag icon
  String url; //this shows the location url of an api endpoint

  worldTime({required this.location, required this.flag, required this.url});

  Future<void> getTime() async {
    try {
      //this is where the request is made
      Response response = await get(Uri.http('worldtimeapi.org', '$url'));
      Map data = jsonDecode(response.body);
      // print(data);

      //  get properties from the data
      String datetime = data['datetime'];
      String offset = data['utc_offset'];
      // print(datetime);
      // print(offset);

      //  This is DateTime object created
      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offset)));

      // this set the time property
      time = DateFormat.jm().format(now);
    } catch (e) {
      print('display error: $e');
      time = 'time data couldn\'t be accessed';
    }
  }
}
