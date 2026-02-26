import 'package:flutter/material.dart';

class HotelsScreen extends StatelessWidget {
  const HotelsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Hotels'), centerTitle: true),
      body: Center(child: Text('This is the Hotels screen')),
    );
  }
}
