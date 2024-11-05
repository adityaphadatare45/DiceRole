import 'package:dice_role/dice_roller.dart';// import the required packages because we use one the method that is created in that file.
import 'package:flutter/material.dart'; // this provides the prebuilt UI components and elements.


// Defines the start and end point of gradient // Alignment class align its child within itself .
const startAlignment = Alignment.topLeft; // variable declaration and initilization of alignment.
const endAlignment = Alignment.bottomRight; // The gradient will flow from top left at the corner and ends at bottom right at the corner.

class GradientContainer extends StatelessWidget { // Stateless widget does not contain any internal state , once it is created it can not be changed
  const GradientContainer(
    this.color1,                 // This keyword is the reference to the current instance of class.
    this.color2, 
    {super.key} // 
    ); // constructor for main.dart

 // const GradientContainer.purple({super.key})
     // : color1 = Colors.deepPurple,
    //  color2 = Colors.indigo;

  final Color color1; // 
  final Color color2; // color1 and color2 are final properties means their valuse cannot be changed once that are assigned.

  @override

  // Building the widget for dice images
  Widget build(context) { // Build method describes how the widgets are displayed. // Where widget id return type , reference is method name and context is parameter.
    return Container(              // The main widget for holding child widgets.
      decoration: BoxDecoration(   // Applies gradient to container.
        gradient: LinearGradient(  // Defines the linear color gradient. 
          colors: [color1, color2],
          begin: startAlignment,
          end: endAlignment,
        ),


      ),
      child: const Center( // The box will be at center of the screen and const is used so child widget can not be changed.
        child: DiceRoller(),
      ),
      
    );
  }
}

