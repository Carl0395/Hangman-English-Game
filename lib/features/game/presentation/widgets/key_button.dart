import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hangman_english_learn/core/utils/utils.dart';

class KeyButton extends StatelessWidget {
  final String? letter;
  final Widget? icon;
  final Color? color;
  final double? width;
  final void Function(String key)? onTap;
  const KeyButton({
    super.key,
    this.letter,
    this.icon,
    this.color,
    this.width,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(2),
      child: Material(
        color: color ?? Colors.white,
        borderRadius: BorderRadius.circular(4),
        elevation: 1,
        child: InkWell(
          onTap: () {
            onTap?.call(letter ?? '');
            HapticFeedback.lightImpact();
            playKeyboardSound();
          },
          child: Container(
            height: 40,
            width: width ?? MediaQuery.of(context).size.width * 0.085,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.black.withValues(alpha: 0.3),
                  width: 0.5,
                ),
              ),
              borderRadius: BorderRadius.circular(4),
            ),
            child: letter != null ? Text(letter!) : icon,
          ),
        ),
      ),
    );
  }
}
