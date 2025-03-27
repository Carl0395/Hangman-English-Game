import 'package:flutter/material.dart';
import 'package:hangman_english_learn/features/game/presentation/screens/keyboard.dart';
import 'package:hangman_english_learn/features/game/presentation/widgets/grid_background.dart';
import 'package:hangman_english_learn/features/game/presentation/widgets/hangman.dart';

class GamePage extends StatelessWidget {
  const GamePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF0F0E6),
      body: SafeArea(
        child: Stack(
          children: [
            GridBackground(),
            Container(
              alignment: Alignment.topCenter,
              padding: EdgeInsets.symmetric(horizontal: 4),
              child: Column(
                children: [
                  Spacer(),
                  Text(
                    'Good work',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Hangman(wrongGuesses: 5),
                  Spacer(),
                  Column(
                    children:
                        'Buen trabajo'.split(' ').map((word) {
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:
                                  word.split('').map((letter) {
                                    return Text(' __ ');
                                  }).toList(),
                            ),
                          );
                        }).toList(),
                  ),
                  Spacer(),
                  Keyboard(),
                  Spacer(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
