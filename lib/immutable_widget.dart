import 'package:flutter/material.dart';
import 'dart:math' as Math;

class ImmutableWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: Center(
        child: Transform.rotate(
          angle : 180 / Math.pi, //Rotation are specified in radians
          child: Container(
            width: 250,
            height: 250,
            decoration: BoxDecoration(
              color: Colors.purple,
              boxShadow: [            
                BoxShadow(
                  color: Colors.deepPurple.withAlpha(120),
                  spreadRadius: 4,
                  blurRadius: 15,
                  offset: Offset.fromDirection(1.0 ,30)
                ),
              ],
              borderRadius: BorderRadius.all(Radius.circular(20)),
         
            ),
          child: Padding(
            padding: const EdgeInsets.all(50.0),
            child: _buildShinyCircle(),

          ),
          ),
        ),
      ),
    );
  }


Widget _buildShinyCircle() {
  return Container(
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      gradient: RadialGradient(
        colors: [Colors.lightBlue,
         Colors.blueAccent
         ],
         center: Alignment(-0.3, -0.5),
        ),
        boxShadow: [
          BoxShadow(   
            blurRadius: 20.0,
          ),
        ]
    ),
  );
}
}