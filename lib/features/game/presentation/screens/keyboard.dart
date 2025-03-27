import 'package:flutter/material.dart';
import 'package:hangman_english_learn/features/game/presentation/widgets/key_button.dart';

class Keyboard extends StatelessWidget {
  const Keyboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:
              'QWERTYUIOP'
                  .split('')
                  .map((letter) => KeyButton(letter: letter))
                  .toList(),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:
              'ASDFGHJKLÑ'
                  .split('')
                  .map((letter) => KeyButton(letter: letter))
                  .toList(),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: 6),
            ...'ZXCVBNM'.split('').map((letter) => KeyButton(letter: letter)),
            KeyButton(
              width: 40,
              icon: Icon(Icons.backspace_outlined, size: 20),
              color: Color(0xFFABB1BA),
            ),
          ],
        ),
      ],
    );
  }
}
