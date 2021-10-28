import 'dart:math';

import 'package:flutter/material.dart';

class AnimationControllerStudy extends StatefulWidget {
  static const routeName = '/animation-controller';
  const AnimationControllerStudy({Key? key}) : super(key: key);

  @override
  _AnimationControllerStudyState createState() => _AnimationControllerStudyState();
}

class _AnimationControllerStudyState extends State<AnimationControllerStudy> with SingleTickerProviderStateMixin {
  AnimationController? controller;
  Animation<double>? animation;
  Animation<double>? animation2;
  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    )..repeat();

    animation = Tween<double>(begin: 0, end: 2 * pi).animate(controller!);
    animation2 = Tween<double>(begin: -1, end: 0).animate(controller!);
    super.initState();
  }

  @override
  void dispose() {
    controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animation Controller'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          AnimatedBuilder(
            animation: animation!,
            child: Center(
              child: Container(
                color: Colors.red,
                height: 70,
                width: 70,
              ),
            ),
            builder: (context, child) => Transform.rotate(
              angle: animation!.value,
              child: child,
            ),
          ),
          AnimatedBuilder(
              animation: animation!,
              child: Center(
                child: Container(
                  color: Colors.red,
                  height: 70,
                  width: 70,
                ),
              ),
              builder: (context, child) {
                final width = MediaQuery.of(context).size.width;
                final x = animation2!.value * width;
                return Transform(
                  transform: Matrix4.translationValues(x, 0, 0),
                  child: child,
                );
              }),
        ],
      ),
    );
  }
}
