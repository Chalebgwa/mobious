import 'package:flutter/material.dart';
import 'package:mobious/screens/home.dart';
import 'package:mobious/screens/signin.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Mobius",
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Root(),
    );
  }

}

enum AuthState{SIGNED_IN,SIGNED_OUT}

class Root extends StatefulWidget {
  @override
  RootState createState() {
    return new RootState();
  }
}

class RootState extends State<Root> {

  AuthState _authState = AuthState.SIGNED_OUT;

  void _signedIn() {
    setState(() {
      _authState = AuthState.SIGNED_IN;
    });
  }

  void _signedOut() {
    setState(() {
      _authState = AuthState.SIGNED_OUT;
    });
  }

  @override
  Widget build(BuildContext context) {


    switch(_authState){

      case AuthState.SIGNED_OUT:
        return Login(signin: _signedIn,);
      case AuthState.SIGNED_IN:
        return Home(signout: _signedOut,);

    }


  }
}
