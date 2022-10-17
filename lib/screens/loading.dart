import 'package:flutter/material.dart';
import 'package:worlde_time/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  void setupWorldTime() async {
    worldTime instance =
        worldTime(location: 'Accra', flag: 'africa.png', url: 'Africa/Accra');
    await instance.getTime();
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'location': instance.location,
      'flag': instance.flag,
      'time': instance.time,
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
      backgroundColor: Colors.blueAccent[600],
      body: SpinKitSpinningLines(
        color: Colors.white70,
        size: 70,
      ),
    );
  }
}
