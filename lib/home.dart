
import 'package:apheriaios/about.dart';
import 'package:apheriaios/feedback.dart';
import 'package:apheriaios/files.dart';
import 'package:apheriaios/filler.dart';
import 'package:apheriaios/instagram.dart';
import 'package:apheriaios/shop.dart';
import 'package:apheriaios/starterkit.dart';
import 'package:apheriaios/welcome.dart';
import 'package:flutter/material.dart';




class _Page {
  _Page({this.widget});
  final StatefulWidget widget;
}

List<_Page> _allPages = <_Page>[
  _Page(widget: WelcomePage()), //0
  _Page(widget: ShopHome()), //1
  _Page(widget: StarterKit()), //2
  _Page(widget: HelpHome()), //3
  _Page(widget: InstagramHome()), //4
  _Page(widget: Filler()), //5
  _Page(widget: Filler()), //6
  _Page(widget: FilesHome()), //7
  _Page(widget: FeedbackForm()) //8


];

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;


  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(vsync: this, length: _allPages.length);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }



  Widget build(BuildContext context) {
    return new Scaffold(
          appBar: AppBar(title: const Text('ad goes here'),
              backgroundColor: Color(0xffffa4e2)),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          floatingActionButton:  IconButton(icon: Image.network('https://i.postimg.cc/tg6bpcYs/oie-trans-1.gif'
          ),
            onPressed: (){
              _showModal();
            },iconSize: 80,
          ),
          body: TabBarView(
              controller: _controller,
              children: _allPages.map<Widget>((_Page page) {
                return SafeArea(
                  top: false,
                  bottom: false,
                  child: Container(
                      key: ObjectKey(page.widget),
                      padding: const EdgeInsets.all(12.0),
                      child: page.widget),
                );
              }).toList()),
          bottomNavigationBar: BottomAppBar(
            shape: CircularNotchedRectangle(),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0,vertical: 33),
            ),
            color: Colors.white,
          ));
  }

  void _showModal() {
    showModalBottomSheet<void>(
        context: context,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        builder: (BuildContext context) {
          return new GridView.count(
              primary: false,
              padding: const EdgeInsets.all(10),
              crossAxisSpacing: 0,
              mainAxisSpacing: 0,
              crossAxisCount: 3,
              children: <Widget>[
                Column(
                    children: <Widget>[
                      IconButton(icon: Image.network('https://i.postimg.cc/PxXC67b8/oie-9j-C1h-TXu-V2-Wp.png') ,
                        onPressed: () {
                          _controller.animateTo(2);
                          Navigator.pop(context);
                        },
                        iconSize: 100,
                      ),
                      Text('starter kit')
                    ]),
                Column(
                    children: <Widget>[
                      IconButton(icon: Image.network('https://i.postimg.cc/XqvQ0QWr/oie-SX5zvz-L4d-Y2-P.png') ,
                        onPressed: () {
                          _controller.animateTo(3);
                          Navigator.pop(context);
                        },
                        iconSize: 100,
                      ),
                      Text('about')
                    ]),
                Column(
                    children: <Widget>[
                      IconButton(icon: Image.network('https://i.postimg.cc/MZhtMKZ3/Untitled-Artwork-7-2.png'),
                        onPressed: () {
                          _controller.animateTo(1);
                          Navigator.pop(context);
                        },
                        iconSize: 100,
                      ),
                      Text('shop')
                    ]),
                Column(
                    children: <Widget>[
                      IconButton(icon: Image.network('https://i.postimg.cc/Nj9KyTDZ/oie-u41uw-Ir7v-NZi.png',) ,
                        onPressed: () {
                          _controller.animateTo(6);
                          Navigator.pop(context);
                        },
                        iconSize: 100,
                      ),
                      Text('creations')
                    ]),
                Column(
                    children: <Widget>[
                      IconButton(icon: Image.network('https://i.postimg.cc/rsjFP62t/oie-mzivb-IXVr2v1.png') ,
                        onPressed: () {
                          _controller.animateTo(4);
                          Navigator.pop(context);
                        },
                        iconSize: 100,
                      ),
                      Text('instagram')
                    ]),

                Column(
                    children: <Widget>[
                      IconButton(icon: Icon(Icons.perm_contact_calendar), color: Color(0xffffa4e2) ,
                          onPressed: () {
                            _controller.animateTo(5);
                            Navigator.pop(context);
                          },
                          iconSize: 100
                      ),
                      Text('my passport')]),
                Column(
                    children: <Widget>[
                      IconButton(icon: Image.network('https://i.postimg.cc/xTj4DrST/Favicon.png') ,
                          onPressed: () {
                            _controller.animateTo(7);
                            Navigator.pop(context);
                          },
                          iconSize: 100
                      ),
                      Text('view files')]),
                Column(
                    children: <Widget>[
                      IconButton (icon: Icon(Icons.feedback), color: Colors.amber ,
                        onPressed: () {
                          _controller.animateTo(8);
                          Navigator.pop(context);
                        },
                        iconSize: 100,
                      ),
                      Text('feedback')
                    ]),
                Column(
                    children: <Widget>[
                      IconButton(icon: Icon(Icons.exit_to_app),color: Color(0xffffa4e2) ,
                          onPressed:
                          null,
                          iconSize: 100
                      ),
                      Text('log out')])

              ]);});}}

