import 'package:flutter/material.dart';
import 'package:awesome_extensions/awesome_extensions.dart';

class AppBackground extends StatelessWidget {
  const AppBackground({Key? key, required this.child, this.height = 0.32})
      : super(key: key);
  final Widget child;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            height: context.height * height,
            decoration: BoxDecoration(
                image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                ImageConstant.bg,
              ),
            ))),
        child,
      ],
    );
  }
}
