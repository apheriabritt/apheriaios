import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';



class ShopHome extends StatefulWidget {
  @override
  _ShopHomeState createState() => _ShopHomeState();
}

class _ShopHomeState extends State<ShopHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage('https://i.postimg.cc/SNFswWRQ/Untitled-Artwork-8.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
              child: Card(
                margin: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
                child: ListTile(
                  leading: Icon(Icons.shopping_cart, color: Color(0xff002699)),
                  title: Text('go to shop'),
                  trailing: Icon(Icons.arrow_forward, color: Colors.amber),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SecondRoute()),
                    );
                  },
                ),
              ),
            )));
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
      url: 'https://apheria.co.uk/shop2.html',
      hidden: true,
      withZoom: true,

    );
  }
}