import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class RivePage extends StatelessWidget {
  const RivePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: RiveAnimation.asset(
        'assets/images/planet.riv',
        fit: BoxFit.cover,
        artboard: 'Artboard',
      ),
    );
  }
}
