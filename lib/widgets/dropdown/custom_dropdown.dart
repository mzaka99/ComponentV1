// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:component_v1/extension/textstyle_extension.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';

class CustomDropdownV1<T> extends StatelessWidget {
  final String? title;
  final String? labelText;
  final String? hintText;
  final bool showSearchBox;
  final String Function(T)? itemAsString;
  final void Function(T?)? onChanged;
  final List<T> items;
  final String? Function(T?)? validator;
  final T? selectedItem;
  final bool clearButton;
  final bool enabled;
  final Widget Function(BuildContext, String)? emptyBuilder;
  final bool Function(T)? disabledItemFn;
  final TextStyle? hintStyle;
  final bool isRequired;
  final Widget? trailing;
  final TextStyle? titleTextStyle;
  const CustomDropdownV1({
    Key? key,
    this.title,
    this.labelText,
    this.hintText,
    this.itemAsString,
    this.onChanged,
    required this.items,
    this.validator,
    this.selectedItem,
    this.emptyBuilder,
    this.disabledItemFn,
    this.hintStyle,
    this.clearButton = false,
    this.showSearchBox = false,
    this.isRequired = false,
    this.enabled = true,
    this.titleTextStyle,
    this.trailing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (title != null)
          Row(
            children: [
              Text(title ?? "",
                  style: titleTextStyle ??
                      Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.onSurface(context)),
              if (isRequired)
                Text(
                  '*',
                  style: titleTextStyle ??
                      Theme.of(context).textTheme.bodyMedium.error(context),
                ),
            ],
          ),
        if (title != null)
          const SizedBox(
            height: 10,
          ),
        DropdownSearch<T>(
          enabled: enabled,
          autoValidateMode: AutovalidateMode.onUserInteraction,
          validator: validator,
          selectedItem: selectedItem,
          clearButtonProps: !clearButton
              ? const ClearButtonProps(
                  isVisible: false,
                )
              : const ClearButtonProps(
                  icon: Icon(Icons.clear),
                  isVisible: true,
                ),
          dropdownButtonProps: DropdownButtonProps(
              visualDensity: VisualDensity.compact,
              padding: const EdgeInsets.only(right: 10),
              icon: trailing ??
                  const Icon(
                    Icons.keyboard_arrow_down_rounded,
                    size: 30,
                  )),
          dropdownDecoratorProps: DropDownDecoratorProps(
            baseStyle: hintStyle,
            dropdownSearchDecoration: InputDecoration(
              floatingLabelBehavior: FloatingLabelBehavior.always,
              hintText: hintText,
              hintStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color:
                        Theme.of(context).colorScheme.outline.withOpacity(.8),
                  ),
              floatingLabelStyle: hintStyle,
              // isDense: true,
            ),
          ),
          popupProps: PopupProps.menu(
              menuProps: const MenuProps(),
              searchDelay: Duration.zero,
              disabledItemFn: disabledItemFn,
              fit: FlexFit.loose,
              emptyBuilder: emptyBuilder,
              showSearchBox: showSearchBox,
              searchFieldProps: const TextFieldProps(autofocus: true)),
          itemAsString: itemAsString,
          items: items,
          onChanged: onChanged,
        ),
      ],
    );
  }
}
