import 'package:flutter/material.dart';

class CustomLabelWidget extends StatelessWidget {
  final Color? backgroundColor;
  final String labelText;
  final Color? labelColor;
  final bool? withBackground;
  const CustomLabelWidget({
    Key? key,
    this.backgroundColor,
    required this.labelText,
    this.labelColor,
    this.withBackground = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (labelText.isEmpty) {
      return const SizedBox();
    } else {
      return Card(
        color: (withBackground == true)
            ? (backgroundColor ??
                Theme.of(context).colorScheme.primaryContainer)
            : null,
        elevation: 0,
        margin: EdgeInsets.zero,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 8,
            vertical: 4,
          ),
          child: Text(
            labelText,
            style: Theme.of(context).textTheme.labelMedium?.copyWith(
                  fontWeight: FontWeight.w500,
                  color: Theme.of(context).colorScheme.primary,
                ),
          ),
        ),
      );
    }
  }
}
