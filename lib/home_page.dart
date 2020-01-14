import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  static String tag = 'home-page';
  @override
  Widget build(BuildContext context) {
    final alucard = Hero(
      tag: 'hero',
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: CircleAvatar(
          radius: 72.0,
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('assets/avatar.png'),
        ),
      ),
    );

    final welCome  = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        "Welcome To Smart Krishi Rolpa",
        style: TextStyle(fontSize: 28.0, color: Colors.white),
        ),
    );

    final lorem = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
        style: TextStyle(fontSize: 18.0, color: Colors.white),
      ),
    );

    final body = Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(28.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.blue, 
          Colors.lightBlueAccent,
          ]),
      ),
      child: Column(
        children: <Widget>[alucard, welCome, lorem
        ],
      ),
    );
    return Scaffold(
      body: body,
    );
  }
}