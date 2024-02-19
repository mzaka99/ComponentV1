import 'package:flutter/material.dart';

class CustomAppBarV1 extends AppBar {
  CustomAppBarV1({
    required BuildContext context,
    Key? key,
    Widget? title,
    List<Widget>? actions,
    bool? firstScreen = false,
    Function()? onTapBack,
  }) : super(
          key: key,
          centerTitle: true,
          scrolledUnderElevation: 0,
          toolbarHeight: 60,
          title: title,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          // foregroundColor: Theme.of(context).colorScheme.onBackground,
          leading: firstScreen == true
              ? null
              : IconButton(
                  onPressed: onTapBack ??
                      () {
                        Navigator.pop(context);
                      },
                  icon: Icon(
                    Icons.arrow_back_ios_rounded,
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
                ),
          actions: actions,
        );
}
