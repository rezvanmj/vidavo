import 'package:flutter/material.dart';

class DividerWidget extends StatelessWidget {
  const DividerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Divider(
      thickness: 0.2,
      color: Theme.of(context).colorScheme.outline,
    );
  }
}
