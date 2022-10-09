import 'package:flutter/material.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  void getData() async {
    //  Simulate the network the username request
    var username = await Future.delayed(Duration(seconds: 3), () => 'Gadosey');

    //Simulate the network of the bio the username request
    var bio = await Future.delayed(
        Duration(seconds: 2), () => 'fruit juice, vegerable');

    print('$username - $bio');
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
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
