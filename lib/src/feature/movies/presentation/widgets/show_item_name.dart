import 'package:flutter/material.dart';

class ShowItemName extends StatelessWidget {
  const ShowItemName(this.name, {super.key});

  final String name;

  @override
  Widget build(BuildContext context) => Text(
    name,
    style: Theme.of(context).textTheme.titleMedium,
    overflow: TextOverflow.ellipsis,
    maxLines: 1,
  );
}
