import 'package:flutter/material.dart';
import 'package:ornek_tasarim/animation/fade_animation.dart';

class IconWidget extends StatelessWidget {
  final String title;
  final Widget
      child;
  final double delayAnimation;
  final Color color;
  const IconWidget(
      {Key? key,
      required this.title,
      required this.child,
      required this.delayAnimation,
      required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FadeAnimation(
          delay: delayAnimation,
          child: Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(40),
            ),
            child: child,
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.01,
        ),
        FadeAnimation(
          delay: delayAnimation,
          child: Text(
            title,
            style: const TextStyle(color: Colors.grey),
          ),
        ),
      ],
    );
  }
}
