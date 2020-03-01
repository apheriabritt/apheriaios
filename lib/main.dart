import 'package:apheriaios/auth.dart';
import 'package:apheriaios/user.dart';
import 'package:apheriaios/wrapper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
    value: AuthService().user,
    child:  MaterialApp(
      theme: ThemeData(fontFamily: 'apheriafont'),
      home: Wrapper(),

    ));
  }
}
