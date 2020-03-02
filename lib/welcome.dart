import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
            body: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage('https://i.postimg.cc/XYxYGm8X/Untitled-Artwork-5.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Center(
                    child: Card(
                      margin: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
                        child: ListTile(
                          leading: CircleAvatar(
                            radius: 25.0,
                            backgroundImage: NetworkImage(
                                'https://i.postimg.cc/6620ZDG8/Untitled-Artwork-1.jpg'),
                          ),
                          subtitle: Text('welcome to the apheria app! use the planet to navigate to the menu. have fun! britt x'),
                          onTap:  null,

                        ),
                      ),
                    ))));
  }
}


