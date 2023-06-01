import 'package:co2_tracker/router.dart';
import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  final Widget body;
  const NavBar({super.key, required this.body});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => router.go("/"),
          icon: const Icon(Icons.track_changes),
        ),
        title: const Text("CO2 Tracker"),
        actions: [
          TextButton.icon(
            onPressed: () => router.go("/community"),
            icon: const Icon(Icons.compare),
            label: const Text("Community"),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: body,
      ),
    );
  }
}
