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
    //the arguments represent what we at the loading page
    var data = ModalRoute.of(context)?.settings.arguments;
    print(data);

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0.0, 121.0, 0.0, 0.0),
          child: Column(
            children: <Widget>[
              FlatButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, '/choose_location');
                },
                icon: Icon(Icons.edit_location_rounded),
                label: Text('Edit Location'),
              ),
              SizedBox(height: 21.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    data['location'],
                    style: TextStyle(
                      fontSize: 21.0,
                      letterSpacing: 2.1,
                    ),
                  )
                ],
              ),
              SizedBox(height: 21.0),
              Text(
                data['time'],
                style: TextStyle(
                  fontSize: 23.0,
                  letterSpacing: 2.0,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
