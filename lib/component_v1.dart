library component_v1;

import 'package:component_v1/extension/textstyle_extension.dart';
import 'package:flutter/material.dart';

ThemeData _getTheme({
  required ThemeData base,
  required ColorScheme colorScheme,
  Iterable<ThemeExtension<dynamic>>? extensions,
  // required CustomColors customColors,
}) =>
    base.copyWith(
      colorScheme: colorScheme,
      typography: Typography.material2021(),
      useMaterial3: true,
      textTheme: base.textTheme.apply(
          bodyColor: colorScheme.onSurface,
          displayColor: colorScheme.onSurface),
      appBarTheme: AppBarTheme(
        backgroundColor: base.scaffoldBackgroundColor,
        centerTitle: true,
        scrolledUnderElevation: 0,
        foregroundColor: colorScheme.onBackground,
        toolbarHeight: 60,
        titleTextStyle: base.textTheme.bodyLarge
            ?.copyWith(fontSize: 16, color: colorScheme.onBackground)
            .boldStyle,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: colorScheme.outline.withOpacity(.13),
          ),
        ),
      ),
      bottomAppBarTheme: const BottomAppBarTheme(
        padding: EdgeInsets.zero,
        shape: CircularNotchedRectangle(),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: colorScheme.primary,
        landscapeLayout: BottomNavigationBarLandscapeLayout.spread,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        unselectedItemColor: colorScheme.inversePrimary,
        // selectedLabelStyle: base.textTheme.labelSmall,
        // unselectedLabelStyle: base.textTheme.bodyMedium,
        selectedItemColor: colorScheme.onPrimary,
      ),
      inputDecorationTheme: InputDecorationTheme(
        contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 3),
        hintStyle: base.textTheme.bodyMedium?.copyWith(
          color: colorScheme.outline.withOpacity(.8),
        ),
        suffixIconColor: colorScheme.onSurfaceVariant,
        prefixIconColor: colorScheme.onSurfaceVariant,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        helperStyle: base.textTheme.bodySmall?.copyWith(
          color: colorScheme.primary,
        ),
        labelStyle: base.textTheme.bodySmall?.copyWith(
          color: colorScheme.onSurfaceVariant,
        ),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide:
                BorderSide(color: colorScheme.outline.withOpacity(.12))),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide:
                BorderSide(color: colorScheme.outline.withOpacity(.12))),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide:
                BorderSide(color: colorScheme.outline.withOpacity(.12))),
        fillColor: colorScheme.surface,
        filled: true,
      ),
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          minimumSize: const Size(double.infinity, 50),
          backgroundColor: colorScheme.primary,
          foregroundColor: colorScheme.onPrimary,
          textStyle:
              base.textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w600),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              8,
            ),
          ),
          padding: const EdgeInsets.symmetric(
            vertical: 12,
            horizontal: 24,
          ),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          surfaceTintColor: colorScheme.primaryContainer,
          backgroundColor: colorScheme.primaryContainer,
          foregroundColor: colorScheme.onPrimaryContainer,
          minimumSize: const Size(double.infinity, 50),
          textStyle:
              base.textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w600),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              8,
            ),
          ),
          padding: const EdgeInsets.symmetric(
            vertical: 12,
            horizontal: 24,
          ),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          minimumSize: const Size(double.infinity, 50),
          side: BorderSide(color: colorScheme.primary),
          textStyle:
              base.textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w600),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              8,
            ),
          ),
          padding: const EdgeInsets.symmetric(
            vertical: 12,
            horizontal: 24,
          ),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              8,
            ),
          ),
          minimumSize: const Size(double.infinity, 50),
          textStyle:
              base.textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w600),
          padding: const EdgeInsets.symmetric(
            vertical: 12,
            horizontal: 24,
          ),
        ),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: colorScheme.primary,
        foregroundColor: colorScheme.onPrimary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
      ),
      tabBarTheme: TabBarTheme(
        indicator: UnderlineTabIndicator(
          borderRadius: BorderRadius.circular(100),
          borderSide: BorderSide(
            color: colorScheme.onPrimaryContainer,
            width: 3,
          ),
        ),
        labelColor: colorScheme.onSurfaceVariant,
        dividerColor: Colors.transparent,
      ),
      chipTheme: ChipThemeData(
        backgroundColor: colorScheme.surface,
        secondaryLabelStyle:
            base.textTheme.labelLarge?.copyWith(color: Colors.red),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        iconTheme: IconThemeData(
            color: colorScheme.onSurfaceVariant,
            size: 16,
            grade: 10,
            weight: 100),
        labelStyle: base.textTheme.labelLarge
            ?.copyWith(color: colorScheme.onSurfaceVariant),
        selectedColor: colorScheme.primaryContainer,
        side: MaterialStateBorderSide.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return null;
          } else {
            return BorderSide(color: colorScheme.outlineVariant);
          }
        }),
        showCheckmark: false,
      ),
      cardTheme: CardTheme(
        color: colorScheme.surface,
        surfaceTintColor: colorScheme.surface,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      popupMenuTheme: PopupMenuThemeData(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        color: colorScheme.surface,
        surfaceTintColor: colorScheme.surface,
        elevation: 8,
      ),
      bottomSheetTheme: BottomSheetThemeData(
        showDragHandle: true,
        dragHandleSize: const Size(52, 6),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        dragHandleColor: colorScheme.surfaceVariant,
      ),
      radioTheme: RadioThemeData(
        fillColor: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return colorScheme.primary;
          } else if (states.contains(MaterialState.disabled)) {
            return null;
          } else {
            return colorScheme.outlineVariant;
          }
        }),
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        visualDensity: VisualDensity.compact,
      ),
      dialogTheme: DialogTheme(
        titleTextStyle: base.textTheme.titleMedium.boldStyle,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      snackBarTheme:
          const SnackBarThemeData(behavior: SnackBarBehavior.floating),
      checkboxTheme: CheckboxThemeData(
        side: BorderSide(
          color: colorScheme.outlineVariant,
          width: 1,
        ),
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        visualDensity: VisualDensity.compact,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(2),
        ),
      ),
      extensions: extensions,
    );

ThemeData lightTheme({
  required TextTheme textTheme,
  required Color primaryColor,
  Iterable<ThemeExtension<dynamic>>? extensions,
}) {
  var theme = _getTheme(
    base: ThemeData.light().copyWith(textTheme: textTheme),
    colorScheme: ColorScheme.fromSeed(
      seedColor: primaryColor,
    ),
    extensions: extensions,
    // customColors: lightCustomColors,
  );
  return theme;
}

ThemeData darkTheme({
  required TextTheme textTheme,
  required Color primaryColor,
  Iterable<ThemeExtension<dynamic>>? extensions,
}) =>
    _getTheme(
      base: ThemeData.dark().copyWith(textTheme: textTheme),
      colorScheme: ColorScheme.fromSeed(
          seedColor: primaryColor, brightness: Brightness.dark),
      // customColors: darkCustomColors,
      extensions: extensions,
    );
