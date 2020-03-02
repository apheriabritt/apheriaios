
import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';




class StarterKit extends StatefulWidget {
  @override
  _StarterKitState createState() => _StarterKitState();
}

class _StarterKitState extends State<StarterKit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Column(
            children: <Widget>[
              Card(
                  margin: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                  child: Padding(
                      padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
                      child: ListTile(
                        leading: CircleAvatar(
                          radius: 25.0,
                          backgroundImage: NetworkImage(
                              'https://i.postimg.cc/6620ZDG8/Untitled-Artwork-1.jpg'),
                        ),
                        subtitle: Text('the apheria starter kit contains everything you need to start making apheria creations - and it is compeltely free!'),
                        onTap:  null,

                      ))),

              Card(
                margin: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
                child: ListTile(
                  leading: Icon(Icons.ondemand_video, color: Color(0xff002699)),
                  title: Text('about the kit'),
                  trailing: Icon(Icons.arrow_forward, color: Colors.yellowAccent),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SecondRoute()),
                    );
                  },
                ),
              ),
              Text(''),
              Image.network(
                'https://i.postimg.cc/mZYqB3HS/Untitled-design-1.png',
              ),



              Card(
                margin: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
                child: ListTile(
                  leading: Icon(Icons.ondemand_video, color: Color(0xff002699)),
                  title: Text('order your free kit!'),
                  trailing: Icon(Icons.arrow_forward, color: Colors.yellowAccent),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ThirdRoute()),
                    );
                  },
                ),
              ),
            ]));
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
      url: 'https://www.instagram.com/tv/B5-qGXxBCxC/?utm_source=ig_web_copy_link',
      hidden: true,
      withZoom: true,

    );




  }}


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
      url: 'https://www.apheria.co.uk/form.html',
      hidden: true,
      withZoom: true,

    );




  }}
