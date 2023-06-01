import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  final Widget body;
  const NavBar({super.key, required this.body});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.ac_unit_outlined),
        actions: [],
      ),
      body: body,
    );
  }
}
