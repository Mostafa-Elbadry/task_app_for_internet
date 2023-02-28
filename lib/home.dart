import 'package:flutter/material.dart';

class ListHomePage extends StatefulWidget {
  const ListHomePage({super.key});

  @override
  State<ListHomePage> createState() => _ListHomePageState();
}

class _ListHomePageState extends State<ListHomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('TEsting'),
      ),
    );
  }
}
