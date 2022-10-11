import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  void getTime() async {
    Response response =
        await get('http://worldtimeapi.org/api/timezone/Asia/Korea');
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
    print(now);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('It\s loading'),
        centerTitle: true,
        elevation: 0.6,
      ),
      body: SafeArea(
        child: Text('Loading Page'),
      ),
    );
  }
}
