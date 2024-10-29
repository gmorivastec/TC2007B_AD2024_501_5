// dart - programming language
// general purpose programming language made by google 

import 'package:flutter/material.dart';

// MORE ABOUT WIDGETS! 
// 2 TYPES:
// 1. stateful
// 2. stateless

// stateless - type of widget in which the main interface doesn't change 
// doesn't matter what happens with data (no state)

class StatelessExampleWidget extends StatelessWidget {
  const StatelessExampleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("EXAMPLE")),
      body: const StatefulExampleWidget()
    );
  }
}

// stateful widget
// 1. can have several differente UIs associated with a state
// 2. can use state variables

class StatefulExampleWidget extends StatefulWidget {
  const StatefulExampleWidget({super.key});

  // required - have a createState method
  // MUST return a state for this particular type
  // this method should have the logic to determine what state to return
  @override
  State<StatefulExampleWidget> createState() => _StatefulExampleWidgetState();
}

// states MUST extend the State class with the associated widget as type argument
class _StatefulExampleWidgetState extends State<StatefulExampleWidget> {

  // for this example we are going to display a list with predefined data
  final List<String> content = ["a", "b", "c", "d", "e"];
  final TextStyle textStyle = const TextStyle(fontSize: 20.0);

  // states MUST override the build method
  // does the same as the build method in the stateless widget
  @override
  Widget build(BuildContext context) {
    return buildList();
  }

  // since we are using a class we can define members - variables, methods 
  Widget buildList() {

    // we are using a design pattern here 
    // which one?
    // - factory
    // https://en.wikipedia.org/wiki/Factory_method_pattern 

    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemCount: content.length,
      itemBuilder: (context, i) {
        return buildRow(content[i]);
      }
    );
  }

  Widget buildRow(String value) {
    return ListTile(
      title: Text(value)
    );
  }
}