import 'package:flutter/material.dart';

import 'home_page.dart';
class LoginPage extends StatefulWidget {
  static String tag = 'login-page';
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final logo = Hero(
        tag:'hero',
        child: CircleAvatar(
          radius: 48.0,
          backgroundColor: Colors.transparent,
         child: Image.asset('/assets/avatar.png'),
        ),
      );

final email = TextFormField(
  keyboardType: TextInputType.emailAddress,
  autofocus: false,
  initialValue: 'thapag447@gmail.com',
  decoration: InputDecoration(
  hintText: 'Enter Your Email',
  contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(32.0)
  ),
  ),
);

final password = TextFormField(
  keyboardType: TextInputType.text,
  autofocus: false,
  initialValue: 'tilak@345&*',
  obscureText: true,
  decoration: InputDecoration(
  hintText: 'Enter Your Password',
  contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(32.0)
  ),
  ),
);

final loginButton = Padding(
  padding: EdgeInsets.symmetric(vertical: 16.0),
  child: Material(
    borderRadius: BorderRadius.circular(38.0),
    child: MaterialButton(
      minWidth: 200.0,
      height: 50.0,
      onPressed: (){
        Navigator.of(context).pushNamed(HomePage.tag);
      },
      color: Colors.lightBlueAccent,
      child: Text('Log In', style: TextStyle(color: Colors.white),
      ),
    ),
  ),
);

final forgotLabel = FlatButton(
  child: Text('Forgot Password', style: TextStyle(color: Colors.black54),
  ),
  onPressed: (){},
);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            logo,
            SizedBox(height: 48.0,),
            email,
            SizedBox(height: 8.0,),
            password,
            SizedBox(height: 24.0),
            loginButton,
            forgotLabel
          ],
        ),
      ),
    );
  }
}