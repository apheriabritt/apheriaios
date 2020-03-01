import 'package:flutter/material.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
            child:
            Image.network('https://i.postimg.cc/ZqkkY0Jx/oie-50rz-QWz-Pn10-G.gif')
        )
    );
  }
}