import 'package:flutter/material.dart';

class ShowStatus extends StatelessWidget {
  const ShowStatus(this.status, {super.key});

  final String status;

  @override
  Widget build(BuildContext context) {
    Color getStatusColor() => switch (status.toLowerCase()) {
      'running' => Colors.green,
      'ended' => Colors.blueGrey,
      _ => Colors.deepOrange,
    };

    return Chip(
      label: Text(
        status,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 12,
          fontWeight: FontWeight.w300,
        ),
      ),
      backgroundColor: getStatusColor(),
      visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
      elevation: 0,
      side: BorderSide.none,
    );
  }
}
