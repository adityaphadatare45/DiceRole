import 'dart:math';

import 'package:flutter/material.dart';

final randomizer = Random();
 // Used for generating the random numbers for simulating dice roll.

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}
 // Private class extendes to diceroller state
class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 2;

  void rollDice() {  // This method is called to roll the dice.
    setState(() { // It notifies that internal set has been changed.
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column( // Create the vertical array of childern. 
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png',
          width: 150,
        ),
        const SizedBox(height: 20),
        TextButton(
          onPressed: rollDice, // Button for generating rondom dice numbers.
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