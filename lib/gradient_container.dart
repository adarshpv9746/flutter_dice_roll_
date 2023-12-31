import 'package:flutter/material.dart';
import 'package:flutter_dice_roll_app/dice_roller.dart';
//import 'package:flutter_dice_roll_app/styled_text.dart';

var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});
  final Color color1;
  final Color color2;

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
      child: const Center(
        //child: StyledText('Hello world!!'),
        child: DiceRoller(),
      ),
    );
  }
}
