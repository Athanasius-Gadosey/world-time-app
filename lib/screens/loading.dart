import 'package:flutter/material.dart';
import 'package:worlde_time/services/world_time.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  String time = 'loading';

  void setupWorldTime() async {
    worldTime instance =
        worldTime(location: 'Accra', flag: 'germany.png', url: 'Africa/Accra');
    await instance.getTime();
    print(instance.time);
    setState(() {
      time = instance.time;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(50.0),
        child: Text('Loading Page is $time'),
      ),
    );
  }
}
