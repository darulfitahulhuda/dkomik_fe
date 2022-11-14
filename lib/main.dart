import 'package:dkomik/core/di/injection_container.dart';
import 'package:flutter/material.dart';

import 'core/app.dart';

// https://dribbble.com/shots/16387881-Anime-Stream-UI-Animation
void main() async {
  await init();
  runApp(const MyApp());
}
