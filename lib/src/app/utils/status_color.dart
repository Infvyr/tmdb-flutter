import 'package:flutter/material.dart';

/// A utility class that provides text color for each show status
class StatusColor {
  factory StatusColor() {
    _instance ??= StatusColor._internal();
    return _instance!;
  }

  StatusColor._internal();

  static StatusColor? _instance;

  static Color getStatusColor(String status) => switch (status.toLowerCase()) {
    'running' => Colors.green,
    'ended' => Colors.blueGrey,
    _ => Colors.deepOrange,
  };
}
