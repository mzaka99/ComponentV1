// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class MenuListTile extends StatelessWidget {
  final Function() onTap;
  final String title;
  final EdgeInsets? contentPadding;
  final String? description;
  final Widget? trailing;
  final Widget? leading;
  final double? trailingIconSize;
  final bool? withTrailing;
  final Color? backgroundColor;
  final Color? iconColor;
  final bool? withBottomBorder;
  const MenuListTile({
    Key? key,
    required this.onTap,
    required this.title,
    this.contentPadding,
    this.description,
    this.trailing,
    this.leading,
    this.trailingIconSize,
    this.withTrailing = true,
    this.backgroundColor,
    this.iconColor,
    this.withBottomBorder = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ListTile(
          tileColor: backgroundColor ?? Theme.of(context).colorScheme.surface,
          onTap: onTap,
          contentPadding: contentPadding ??
              const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
          leading: leading,
          title: Text(title),
          subtitle: (description != null) ? Text(description!) : null,
          trailing: trailing ??
              (withTrailing == true
                  ? Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: trailingIconSize ?? 20,
                      color: Theme.of(context).colorScheme.onSurface,
                    )
                  : null),
        ),
        if (withBottomBorder == true)
          const Divider(
            height: 0,
          ),
      ],
    );
  }
}
