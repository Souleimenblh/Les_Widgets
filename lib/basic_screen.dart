import 'package:flutter/material.dart';
import 'package:flutter_layout/text_layout.dart';

class BasicScreen extends StatelessWidget {
  const BasicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: double.infinity,
            child: Image.asset(
              'assets/beach.jpeg',
              fit: BoxFit.cover, 
            ),
          ),
          TextLayout(),
        ],
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.lightBlue,
          child: Center(
            child: Text('Im a Drawer'),
          ),
        ),
      ),
    );
  }
}
