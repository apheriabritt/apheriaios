import 'authenticate.dart';
import 'home.dart';
import 'user.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final user = Provider.of<User>(context);

    //return either home or authenticate widget

    if (user == null) {
      return Authenticate();
    } else{
      return MyHomePage();
    }
  }
}
