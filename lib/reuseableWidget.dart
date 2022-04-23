import 'package:flutter/material.dart';
import 'Constant.dart';

class ChildW extends StatelessWidget {
  ChildW({
    Key? key,
    required this.child,
    required this.width,
    required this.height,
    required this.color,
  }) : super(key: key);
  Widget child;
  Color color;
  double width;
  double height;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          (15),
        ),
        color: color,
      ),
      child: child,
    );
  }
}
