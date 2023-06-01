import 'package:flutter/material.dart';

class MachineScreen extends StatelessWidget {
  final String machine;
  const MachineScreen({super.key, required this.machine});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [Text(machine)],
      ),
    );
  }
}
