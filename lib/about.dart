import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class HelpHome extends StatefulWidget {
  @override
  _HelpHomeState createState() => _HelpHomeState();
}

class _HelpHomeState extends State<HelpHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
            children: <Widget>[
              Text(''),
              Text(''),
              Text('what is apheria?'),
              Card(
                margin: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
                child: ListTile(
                  leading: Icon(Icons.ondemand_video, color: Color(0xff002699)),
                  title: Text('apheria in 1 minute'),
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
              Text('the team:'),
              Card(
                  margin: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
                  child: ListTile(
                      leading: CircleAvatar(
                        radius: 25.0,
                        backgroundImage: NetworkImage(
                            'https://i.postimg.cc/6620ZDG8/Untitled-Artwork-1.jpg'),
                      ),
                      title: Text('britt wood'),
                      subtitle: Text("owner - illustrator and developer")

                  )),
              Card(
                  margin: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
                  child: ListTile(
                      leading: CircleAvatar(
                        radius: 25.0,
                        backgroundImage: NetworkImage(
                            'https://i.postimg.cc/MK1mPV5x/Untitled-Artwork.jpg'),
                      ),
                      title: Text('ashleigh burgess'),
                      subtitle: Text("creative assistant/eco expert")
                  )),

              Text(''),
              Text('the story:'),
              Card(
                margin: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
                child: ListTile(
                  leading: Icon(Icons.ondemand_video, color: Color(0xff002699)),
                  title: Text('watch video series'),
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
      url: 'https://www.apheria.co.uk/starterkitvid.html',
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
      url: 'https://www.apheria.co.uk/igtvseries.html',
      hidden: true,
      withZoom: true,

    );




  }}