import 'package:flutter/material.dart';

extension TextStyleExtension on TextStyle? {
  TextStyle? onPrimary(BuildContext context) => this!.copyWith(
        color: Theme.of(context).colorScheme.onPrimary,
      );

  TextStyle get boldStyle => this!.copyWith(
        fontWeight: FontWeight.bold,
      );

  TextStyle? onBackground(BuildContext context) => this!.copyWith(
        color: Theme.of(context).colorScheme.onBackground,
      );

  TextStyle? primary(BuildContext context) => this!.copyWith(
        color: Theme.of(context).colorScheme.primary,
      );

  TextStyle? dynamicColor(Color? color) => this!.copyWith(
        color: color,
      );

  TextStyle onSurface(BuildContext context) => this!.copyWith(
        color: Theme.of(context).colorScheme.onSurface,
      );
  TextStyle onSurfaceVariant(BuildContext context) => this!.copyWith(
        color: Theme.of(context).colorScheme.onSurfaceVariant,
      );
  TextStyle outline(BuildContext context) => this!.copyWith(
        color: Theme.of(context).colorScheme.outline,
      );

  TextStyle outlineVariant(BuildContext context) => this!.copyWith(
        color: Theme.of(context).colorScheme.outlineVariant,
      );

  TextStyle error(BuildContext context) => this!.copyWith(
        color: Theme.of(context).colorScheme.error,
      );
}
