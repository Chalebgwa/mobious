import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class Login extends StatefulWidget {

  final VoidCallback signin;

  const Login({Key key, this.signin}) : super(key: key);

  @override
  State<StatefulWidget> createState() => new LoginState();

}

class LoginState extends State<Login> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LOGIN"),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/back3.jpg"),
              fit: BoxFit.fill
          ),
        ),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              SignInButton(
                Buttons.Google,
                onPressed: () {
                  widget.signin();
                },
              ),
              SignInButton(
                Buttons.Facebook,
                onPressed: () {
                  widget.signin();
                },
              ),SignInButton(
                Buttons.Email,
                onPressed: () {
                  widget.signin();
                },
              ),

            ],
          ),
        ),
      )
    );
  }

}