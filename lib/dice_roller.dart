import 'dart:math'; // Import the math library for math related functions.

import 'package:flutter/material.dart';

final randomizer = Random();
 // Used for generating the random numbers for simulating dice roll.

class DiceRoller extends StatefulWidget { // Stateful widget is a widget that maintains state that may change during the widget's lifetime. 
  const DiceRoller({super.key}); // It is used when working with custom widgets which extends to stateful or statelee widget.

  @override
  State<DiceRoller> createState() { // Create state return the instance of diceroller state 
    return _DiceRollerState();
  }
}
 // Private class extendes to diceroller state.
class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 2; // It keeps the track of current value of dice so when the app starts it will display the current state.

  void rollDice() {  // This method is called to roll the dice.
    setState(() { // It notifies that internal set has been changed.
      currentDiceRoll = randomizer.nextInt(6) + 1; // 
    });
  }

  @override
  Widget build(context) {
    return Column( // Create the vertical array of childern. 
      mainAxisSize: MainAxisSize.min, // Makes the column as small as to fit the its children.
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png', // This will ensure that current state of dice id=s shown in the app.
          width: 150,
        ),
        const SizedBox(height: 20),  // Add distance between button and the box.
        TextButton(                 // Button for generating rondom dice numbers.
          onPressed: rollDice, 
          style: TextButton.styleFrom(
             
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 30,
            ),
          ),
          child: const Text('Roll Dice'), 
        )
      ],
    );
  }
}