// THINGS TO DO
 
// 1. install flutter - decompress folder or use vscode 
// https://docs.flutter.dev/get-started/install

// 2. ADD THE FLUTTER BIN FOLDER TO YOUR PATH ENVIRONMENT VARIABLE

// 3. RUN FLUTTER DOCTOR AND FIX ISSUES
// flutter doctor

// 4. ACCEPT PENDING ANDROID LICENSES 
// flutter doctor --android-licenses

import 'package:flutter/material.dart';
import 'classes/example.dart';

// we have a very explicit entry point in our flutter app
// there IS a main method available for us! 
void main() {
  runApp(const MainApp());
}

// Widget:
// very similar to "component" and "composable" (we will see this later)
// the basic building block for UI in Flutter

// Widgets can aggregate - build new widgets with smaller widgets
// a widget class MUST extend another widget class

// each widget is defined by its own class
// super important - the MUST have a build method SOMEWHERE

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: StatelessExampleWidget()
    );
  }
}
