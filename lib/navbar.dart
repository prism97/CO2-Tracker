import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  final Widget body;
  const NavBar({super.key, required this.body});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.ac_unit_outlined),
        title: Text("CO2 Tracker"),
        actions: [],
        backgroundColor: Theme.of(context).primaryColorLight,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: body,
      ),
    );
  }
}
