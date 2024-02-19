// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:component_v1/extension/textstyle_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextFieldV1 extends StatelessWidget {
  final String? titleText;
  final Function(String value)? onChanged;
  final String? hintText;
  final AutovalidateMode? autoValidateMode;
  final bool? isRequired;
  final bool? obscureText;
  final TextEditingController? controller;
  final String? Function(String? value)? validator;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputAction? textInputAction;
  final FocusNode? focusNode;
  final bool? enabled;
  final int? maxLength;
  final int? maxLines;
  final TextInputType? keyboardType;
  final Function()? onEditingComplete;
  final Function(String value)? onSubmitted;
  final Function()? onTap;
  final bool? readOnly;
  final String? helperText;
  final Widget? suffixIcon;
  final TextStyle? titleTextStyle;
  final Widget? prefixIcon;
  const CustomTextFieldV1({
    Key? key,
    this.titleText,
    this.onChanged,
    this.hintText,
    this.autoValidateMode,
    this.isRequired = false,
    this.obscureText = false,
    this.controller,
    this.validator,
    this.inputFormatters,
    this.textInputAction,
    this.focusNode,
    this.enabled,
    this.maxLength,
    this.maxLines,
    this.keyboardType,
    this.onEditingComplete,
    this.onSubmitted,
    this.onTap,
    this.readOnly,
    this.helperText,
    this.suffixIcon,
    this.titleTextStyle,
    this.prefixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (titleText != null)
              Text(
                titleText!,
                style: titleTextStyle ??
                    Theme.of(context).textTheme.bodyMedium?.onSurface(context),
              ),
            if (isRequired == true)
              Text(
                '*',
                style: titleTextStyle ??
                    Theme.of(context).textTheme.bodyMedium?.error(context),
              ),
          ],
        ),
        if (titleText != null)
          const SizedBox(
            height: 10,
          ),
        TextFormField(
          focusNode: focusNode,
          enabled: enabled,
          maxLines: maxLines,
          maxLength: maxLength,
          onTap: onTap,
          readOnly: readOnly ?? false,
          onEditingComplete: onEditingComplete,
          onFieldSubmitted: onSubmitted,
          obscureText: obscureText ?? false,
          inputFormatters: inputFormatters,
          keyboardType: keyboardType,
          textInputAction: textInputAction,
          onChanged: onChanged,
          controller: controller,
          validator: validator,
          decoration: InputDecoration(
            counter: const SizedBox(),
            suffixIcon: suffixIcon,
            prefixIcon: prefixIcon,
            hintText: hintText,
            helperText: helperText,
            hintStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Theme.of(context).colorScheme.outline.withOpacity(.8),
                ),
          ),
          onTapOutside: (event) {
            FocusManager.instance.primaryFocus!.unfocus();
          },
        ),
      ],
    );
  }

  factory CustomTextFieldV1.number({
    final String? titleText,
    final Function(String value)? onChanged,
    final String? hintText,
    final AutovalidateMode? autoValidateMode,
    final bool? isRequired,
    final TextEditingController? controller,
    final String? Function(String? value)? validator,
    final TextInputAction? textInputAction,
    final FocusNode? focusNode,
    final bool? enabled,
    final int? maxLength,
    final int? maxLines,
    final Function()? onEditingComplete,
    final Function(String value)? onSubmitted,
    final Function()? onTap,
    final bool? readOnly,
    final String? helperText,
    final Widget? suffixIcon,
    final Widget? prefixIcon,
    final TextStyle? titleTextStyle,
  }) {
    return CustomTextFieldV1(
      autoValidateMode: autoValidateMode,
      controller: controller,
      enabled: enabled,
      focusNode: focusNode,
      helperText: helperText,
      hintText: hintText,
      maxLength: maxLength,
      maxLines: maxLines,
      onEditingComplete: onEditingComplete,
      onSubmitted: onSubmitted,
      onTap: onTap,
      isRequired: isRequired,
      prefixIcon: prefixIcon,
      readOnly: readOnly,
      suffixIcon: suffixIcon,
      textInputAction: textInputAction,
      titleText: titleText,
      validator: validator,
      titleTextStyle: titleTextStyle,
      onChanged: onChanged,
      keyboardType: TextInputType.number,
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
      ],
    );
  }
  factory CustomTextFieldV1.phoneNumber({
    final String? titleText,
    final Function(String value)? onChanged,
    final String? hintText,
    final AutovalidateMode? autoValidateMode,
    final bool? isRequired,
    final TextEditingController? controller,
    final String? Function(String? value)? validator,
    final TextInputAction? textInputAction,
    final FocusNode? focusNode,
    final bool? enabled,
    final int? maxLength,
    final int? maxLines,
    final Function()? onEditingComplete,
    final Function(String value)? onSubmitted,
    final Function()? onTap,
    final bool? readOnly,
    final String? helperText,
    final Widget? suffixIcon,
    final Widget? prefixIcon,
    final TextStyle? titleTextStyle,
  }) {
    return CustomTextFieldV1(
      autoValidateMode: autoValidateMode,
      controller: controller,
      enabled: enabled,
      focusNode: focusNode,
      helperText: helperText,
      hintText: hintText,
      maxLength: 13,
      maxLines: maxLines,
      onEditingComplete: onEditingComplete,
      onSubmitted: onSubmitted,
      onTap: onTap,
      isRequired: isRequired,
      prefixIcon: prefixIcon,
      readOnly: readOnly,
      suffixIcon: suffixIcon,
      textInputAction: textInputAction,
      titleText: titleText,
      validator: validator,
      titleTextStyle: titleTextStyle,
      onChanged: onChanged,
      keyboardType: TextInputType.number,
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
      ],
    );
  }
}

// class CustomTextFieldV1 extends FormField<String> {
//   final String? titleText;
//   final String? hintText;
//   final BuildContext context;
//   final AutovalidateMode autoValidateMode;

//   CustomTextFieldV1({
//     Key? key,
//     bool isRequired = false,
//     bool obscureText = false,
//     TextEditingController? controller,
//     FormFieldSetter<String>? onSaved,
//     String? Function(String?)? validator,
//     List<TextInputFormatter>? inputFormatters,
//     TextInputAction? textInputAction,
//     FocusNode? focusNode,
//     bool? enabled,
//     int? maxLength,
//     int? maxLines,
//     TextInputType? keyboardType,
//     Function()? onEditingComplete,
//     Function(String)? onSubmitted,
//     Function()? onTap,
//     bool? readOnly,
//     this.titleText,
//     this.hintText,
//     required this.context,
//     this.autoValidateMode = AutovalidateMode.disabled,
//   }) : super(
//           key: key,
//           initialValue: controller?.text ?? '',
//           validator: validator,
//           onSaved: onSaved,
//           autovalidateMode: autoValidateMode,
//           builder: (FormFieldState<String> state) {
//             // String textValue = state.value ?? controller?.text ?? '';
//             return Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 if (titleText != null)
//                   Text(
//                     titleText,
//                     style: Theme.of(context)
//                         .textTheme
//                         .bodyMedium
//                         ?.onSurface(context),
//                   ),
//                 if (titleText != null)
//                   const SizedBox(
//                     height: 10,
//                   ),
//                 TextField(
//                   focusNode: focusNode,
//                   enabled: enabled,
//                   maxLines: maxLines,
//                   maxLength: maxLength,
//                   onTap: onTap,
//                   readOnly: readOnly ?? false,
//                   onEditingComplete: onEditingComplete,
//                   onSubmitted: onSubmitted,
//                   obscureText: obscureText,
//                   inputFormatters: inputFormatters,
//                   keyboardType: keyboardType,
//                   textInputAction: textInputAction,
//                   onChanged: (value) {
//                     state.didChange(value);
//                   },
//                   controller: controller,
//                   onTapOutside: (event) {
//                     FocusManager.instance.primaryFocus!.unfocus();
//                   },
//                 ),
//                 const SizedBox(
//                   height: 5,
//                 ),
//                 if (state.hasError)
//                   Row(
//                     children: [
//                       Icon(
//                         Icons.warning_rounded,
//                         color: Theme.of(context).colorScheme.error,
//                       ),
//                       const SizedBox(
//                         width: 5,
//                       ),
//                       Text(
//                         state.errorText ?? 'Error',
//                         style: Theme.of(context)
//                             .textTheme
//                             .bodyMedium
//                             .error(context),
//                       )
//                     ],
//                   )
//               ],
//             );
//           },
//         );
// }
