import 'package:flutter/material.dart';

class GridBackground extends StatelessWidget {
  const GridBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          itemBuilder:
              (context, index) => Container(
                height: 1,
                color: Color(0xFFE4E4E4),
                margin: EdgeInsets.symmetric(vertical: 10),
                width: double.infinity,
              ),
        ),
        ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder:
              (context, index) => Container(
                height: double.infinity,
                width: 1,
                color: Color(0xFFE4E4E4),
                margin: EdgeInsets.symmetric(horizontal: 10),
              ),
        ),
      ],
    );
  }
}
