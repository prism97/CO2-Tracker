import 'package:co2_tracker/router.dart';
import 'package:flutter/material.dart';

class CatalogueScreen extends StatelessWidget {
  const CatalogueScreen({super.key});

  static const List<Map<String, dynamic>> machines = [
    {
      "machine": "Stove",
      "meter": 1,
      "category": "Cooking",
    },
    {
      "machine": "Washing Machine",
      "meter": 2,
      "category": "Laundry",
    },
    {
      "machine": "Dryer",
      "meter": 2,
      "category": "Laundry",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) => ListTile(
        isThreeLine: true,
        title: Text(machines[index]["machine"]),
        subtitle: Chip(
          label: Text(machines[index]["category"]),
        ),
        onTap: () => router.go("/${machines[index]["machine"]}"),
      ),
      separatorBuilder: (context, index) => const SizedBox(
        height: 10,
      ),
      itemCount: machines.length,
    );
  }
}
