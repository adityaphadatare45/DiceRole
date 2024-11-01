import 'package:dice_role/dice_roller.dart';
import 'package:flutter/material.dart';


// Defines the start and end point of gradient
const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(
    this.color1, 
    this.color2, 
    {super.key}
    ); // constructor for main.dart

  const GradientContainer.purple({super.key})
      : color1 = Colors.deepPurple,
        color2 = Colors.indigo;

  final Color color1;
  final Color color2;

  @override

  // Building the widget for dice images
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlignment,
          end: endAlignment,
        ),


      ),
      child: const Center(
        child: DiceRoller(),
      ),
      
    );
  }
}

