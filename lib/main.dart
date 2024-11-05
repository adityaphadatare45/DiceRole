import 'package:dice_role/gradient_container.dart'; // import 
import 'package:flutter/material.dart';

void main() { // 
  runApp( // 
    const MaterialApp( 
      home: Scaffold(
        //Scaffold is class that provides a basic layout for developing screens.
        body: GradientContainer(
          // It goes from here to gradient_container.dart file    
          Color.fromARGB(255, 6, 185, 155),
          Color.fromARGB(255, 114, 15, 243)
        ),
      ),
    ),
  );
}