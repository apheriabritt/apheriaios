import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class FeedbackForm extends StatefulWidget {
  @override
  _FeedbackFormState createState() => _FeedbackFormState();
}

class _FeedbackFormState extends State<FeedbackForm> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage('https://i.postimg.cc/d1jrb9Cz/Untitled-design-4.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
                child: Column(
                    children: <Widget>[
                      Card(
                          margin: EdgeInsets.fromLTRB(20.0,5.0, 20.0, 10.0),
                          child: Padding(
                              padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
                              child: ListTile(
                                leading: CircleAvatar(
                                  radius: 25.0,
                                  backgroundImage: NetworkImage(
                                      'https://i.postimg.cc/6620ZDG8/Untitled-Artwork-1.jpg'),
                                ),
                                subtitle: Text('snuggle up, grab a nice cup of hot tea or coffee and let me know how you are finding things!'),
                                onTap:  null,

                              ))),
                      Card(
                        margin: EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 0.0),
                        child: Padding(
                            padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                            child: ListTile(
                              leading: Icon(Icons.feedback, color: Color(0xff002699)),
                              title: Text('feedback form'),
                              subtitle: Text('let me know what needs fixing, updating or improving, and if you have any fun new ideas!'),
                              trailing: Icon(Icons.arrow_forward, color: Color(0xffffa4e2)),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => SecondRoute()),
                                );
                              },
                            )),
                      ),
                      Card(
                          margin: EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 0.0),
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                            child: ListTile(
                              leading: Icon(Icons.star, color: Colors.yellow),
                              title: Text('rate on the app store (apple store)'),
                              subtitle: Text('did you like the app? leave a review on the app store'),
                              trailing: Icon(Icons.arrow_forward, color: Color(0xffffa4e2)),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => ThirdRoute()),
                                );
                              },
                            ),
                          )),
                      Card(
                          margin: EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 10.0),
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                            child: ListTile(
                              leading: Icon(Icons.star, color: Colors.yellow),
                              title: Text('rate on the app store (play store)'),
                              subtitle: Text('did you like the app? leave a review on the app store'),
                              trailing: Icon(Icons.arrow_forward, color: Color(0xffffa4e2)),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => ThirdRoute()),
                                );
                              },
                            ),
                          )),

                    ]))));
  }
}

class SecondRoute extends StatelessWidget {
  @override
  final flutterWebviewPlugin = new FlutterWebviewPlugin();

  Widget build(BuildContext context) {
    return WebviewScaffold(
      appBar: AppBar(
          backgroundColor: Color(0xffffa4e2),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.refresh,
                color: Colors.white) ,
              onPressed: () => flutterWebviewPlugin.reload(),
            ),
          ]),
      url: 'https://apheria.co.uk/feedbackform.html',
      hidden: true,
      withZoom: true,

    );
  }
}

class ThirdRoute extends StatelessWidget {
  @override
  final flutterWebviewPlugin = new FlutterWebviewPlugin();

  Widget build(BuildContext context) {
    return WebviewScaffold(
      appBar: AppBar(
          backgroundColor: Color(0xffffa4e2),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.refresh,
                color: Colors.white) ,
              onPressed: () => flutterWebviewPlugin.reload(),
            ),
          ]),
      url: 'https://play.google.com/store/apps/details?id=uk.co.apheria.apheria',
      hidden: true,
      withZoom: true,

    );
  }
}

class FourthRoute extends StatelessWidget {
  @override
  final flutterWebviewPlugin = new FlutterWebviewPlugin();

  Widget build(BuildContext context) {
    return WebviewScaffold(
      appBar: AppBar(
          backgroundColor: Color(0xffffa4e2),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.refresh,
                color: Colors.white) ,
              onPressed: () => flutterWebviewPlugin.reload(),
            ),
          ]),
      url: 'https://apheria.co.uk/feedbackform.html',
      hidden: true,
      withZoom: true,

    );
  }
}