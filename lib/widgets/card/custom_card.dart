import 'package:flutter/material.dart';

class CustomCard extends Card {
  const CustomCard({
    Key? key,
    Widget? child,
    double? elevation,
    Color? color,
    Color? surfaceTintColor,
    ShapeBorder? shape,
  }) : super(
          key: key,
          elevation: elevation,
          child: child,
          margin: EdgeInsets.zero,
          shape: shape,
          color: color,
          surfaceTintColor: surfaceTintColor,
          clipBehavior: Clip.antiAliasWithSaveLayer,
        );

  factory CustomCard.elevated({
    Color? color,
    Color? surfaceTintColor,
    Key? key,
    required Widget child,
  }) {
    return CustomCard(
      color: color,
      elevation: 8,
      surfaceTintColor: surfaceTintColor,
      child: child,
    );
  }
  factory CustomCard.outline({
    required BuildContext context,
    Color? color,
    Color? surfaceTintColor,
    Key? key,
    required Widget child,
  }) {
    return CustomCard(
      color: color,
      elevation: 0,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: BorderSide(
              color: Theme.of(context).colorScheme.outline.withOpacity(.12))),
      surfaceTintColor: surfaceTintColor,
      child: child,
    );
  }
}
