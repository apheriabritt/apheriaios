import 'dart:async';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class InstagramHome extends StatefulWidget {

  @override
  _InstagramHomeState createState() => _InstagramHomeState();
}

class _InstagramHomeState extends State<InstagramHome> {
  final Completer<WebViewController> _controller = Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: WebView(
          initialUrl: "https://instagram.com/apheriabritt",
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (WebViewController webViewController){
            _controller.complete(webViewController);
          },
        )
    );}}