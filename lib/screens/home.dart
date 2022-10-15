import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  Map data = {};
  @override
  Widget build(BuildContext context) {
    ModalRoute.of(context)
        ?.settings
        .arguments; //the arguments represent what we at the loading page
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            FlatButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, '/choose_location');
              },
              icon: Icon(Icons.edit_location_rounded),
              label: Text('Edit Location'),
            )
          ],
        ),
      ),
    );
  }
}
