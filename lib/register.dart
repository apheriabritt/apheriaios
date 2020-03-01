import 'auth.dart';
import 'constants.dart';
import 'loading.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {

  final Function toggleView;
  Register({this.toggleView});

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  final AuthService _auth = AuthService();
  final _formkey = GlobalKey<FormState>();
  bool loading = false;


  //text field state

  String email =  '';
  String password ='';
  String error ='';


  @override
  Widget build(BuildContext context) {
    return loading ? Loading() : Scaffold(
      backgroundColor: Color(0xFF1C1266),
      body: Container(
          padding: EdgeInsets.fromLTRB(50, 200, 50, 0),
          child: Form(
              key: _formkey,
              child: Column(
                children: <Widget>[
                  RaisedButton(color: Colors.yellow,
                    child: Text('go to sign in page'),
                    onPressed: (){
                      widget.toggleView();
                    },
                  ),
                  SizedBox(height: 20.0),
                  TextFormField(
                      decoration: textInputDecoration.copyWith(hintText: 'email'),
                      validator: (val) =>  val.isEmpty ? 'enter an email' : null,
                      onChanged: (val){
                        setState(() => email = val);
                      }
                  ),
                  SizedBox(height: 20.0),
                  TextFormField(
                      decoration: textInputDecoration.copyWith(hintText: 'password'),
                      validator: (val) =>  val.length < 6 ? 'please enter a password longer than 6 characters' : null,
                      obscureText: true,
                      onChanged: (val){
                        setState(() => password = val);
                      }
                  ),
                  SizedBox(height: 20.0),
                  RaisedButton(color: Color(0xffffa4e2),
                      child: Text('register'),
                      onPressed: () async{
                        if (_formkey.currentState.validate()){
                          setState(() => loading = true);
                          dynamic result = await _auth.registerWithEmailAndPassword(email, password);
                          if(result == null) {
                            setState(() {
                              error = 'please supply a valid email';
                              loading = false;
                            });
                          }
                        }
                      }
                  ),

                  SizedBox(height: 12.0),
                  Text(
                    error,
                    style: TextStyle(color: Colors.red, fontSize: 14.0),
                  ),
                ],
              )
          )
      ),
    );
  }
}
