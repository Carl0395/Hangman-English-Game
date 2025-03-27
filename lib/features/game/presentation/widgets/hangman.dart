import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Hangman extends StatelessWidget {
  final int wrongGuesses;
  const Hangman({super.key, this.wrongGuesses = 0});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        if (wrongGuesses >= 2)
          Positioned(
            top: 20,
            left: 25.4,
            child: SvgPicture.asset('assets/images/horizontal_wood.svg'),
          ),
        if (wrongGuesses >= 1)
          Padding(
            padding: EdgeInsets.only(right: 100),
            child: SvgPicture.asset('assets/images/vertical_wood.svg'),
          ),
        if (wrongGuesses >= 3)
          Positioned(
            top: 17,
            left: 170,
            child: SvgPicture.asset('assets/images/rope.svg'),
          ),
        if (wrongGuesses >= 4)
          Positioned(
            top: 62,
            left: 146,
            child: SvgPicture.asset(
              wrongGuesses >= 6
                  ? 'assets/images/death_head.svg'
                  : 'assets/images/happy_head.svg',
            ),
          ),
        if (wrongGuesses >= 6)
          Positioned(
            top: 107,
            left: 119,
            child: SvgPicture.asset('assets/images/body.svg'),
          ),
        if (wrongGuesses >= 5)
          Positioned(
            top: 104,
            left: 148,
            child: SvgPicture.asset('assets/images/neck_rope.svg'),
          ),
      ],
    );
  }
}
