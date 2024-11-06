import 'package:flutter_layout/basic_screen.dart';
//import 'package:flutter_layout/immutable_widget.dart';
import 'package:flutter/material.dart';

void main() => runApp(StaticApp());
class StaticApp extends StatelessWidget {
@override
Widget build(BuildContext context) {
return MaterialApp(
home: BasicScreen(),
);
}
}