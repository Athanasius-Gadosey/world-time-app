import 'package:flutter/material.dart';
import 'package:worlde_time/screens/choose_location.dart';
import 'package:worlde_time/screens/loading.dart';
import 'screens/home.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    //MAPS & ROUTING
    initialRoute: '/home',
    routes: {
      '/': (context) => LoadingScreen(),
      '/home': (context) => Homepage(),
      '/choose_location': (context) => ChooseLocation(),
    },
  ));
}
