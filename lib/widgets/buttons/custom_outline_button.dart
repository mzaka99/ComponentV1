import 'package:flutter/material.dart';

class CustomOutlinedButtonV1 extends StatelessWidget {
  final Function()? onPressed;
  final Widget label;
  final Widget? icon;
  final ButtonStyle? style;
  const CustomOutlinedButtonV1({
    Key? key,
    required this.onPressed,
    required this.label,
    this.icon,
    this.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: Theme.of(context).outlinedButtonTheme.style?.copyWith(
            foregroundColor: style?.foregroundColor,
            alignment: style?.alignment,
            animationDuration: style?.animationDuration,
            backgroundColor: style?.backgroundColor,
            elevation: style?.elevation,
            enableFeedback: style?.enableFeedback,
            iconColor: style?.iconColor,
            shape: style?.shape,
            fixedSize: style?.fixedSize,
            maximumSize: style?.maximumSize,
            iconSize: style?.iconSize,
            minimumSize: style?.minimumSize,
            textStyle: style?.textStyle,
            overlayColor: style?.overlayColor,
            visualDensity: style?.visualDensity,
            splashFactory: style?.splashFactory,
            tapTargetSize: style?.tapTargetSize,
            padding: style?.padding,
            shadowColor: style?.shadowColor,
            surfaceTintColor: style?.surfaceTintColor,
            side: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.disabled)) {
                return BorderSide(color: Theme.of(context).disabledColor);
              } else {
                return BorderSide(color: Theme.of(context).colorScheme.primary);
              }
            }),
          ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (icon != null) icon!,
          if (icon != null)
            const SizedBox(
              width: 8,
            ),
          label,
        ],
      ),
    );
  }
}

//  factory CustomOutlinedButtonV1.icon() = OutlinedButton.icon;
