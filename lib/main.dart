import 'package:flutter/material.dart';
import 'package:motion/motion.dart';

import 'app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  /// Initialize the plugin.
  await Motion.instance.initialize();
  Motion.instance.setUpdateInterval(60.fps);

  runApp(const App());
}
