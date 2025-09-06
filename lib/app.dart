import 'package:flutter/material.dart';

class SparkApp extends StatelessWidget {
  const SparkApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SPARK app',
      home: Scaffold(
        appBar: AppBar(title: const Text('SPARK app')),
        body: const Center(child: Text('Initial page')),
      ),
    );
  }
}
