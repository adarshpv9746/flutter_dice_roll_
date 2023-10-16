import 'package:flutter/material.dart';
//import 'package:flutter_dice_roll_app/styled_text.dart';s

var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});
  final Color color1;
  final Color color2;

  diceRoll() {}

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        //child: StyledText('Hello world!!'),
        child: Column(
          children: [
            Image.asset(
              'assets/images/dice-2.png',
              width: 200,
            ),
            ElevatedButton(onPressed: diceRoll, child: const Text("Roll Dice")),
            TextButton(
              onPressed: diceRoll,
              child: const Text('Roll Dice'),
            )
          ],
        ),
      ),
    );
  }
}
