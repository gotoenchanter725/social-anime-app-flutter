import 'package:flutter/material.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class EditProfileInputWidget extends StatefulWidget {
  final String placeholder;
  final String errorText;
  final bool isError;
  final TextEditingController controller;
  final Function(String) onTextChanged;
  final int maxLines;

  const EditProfileInputWidget({
    super.key,
    required this.placeholder,
    this.isError = false,
    required this.controller,
    required this.onTextChanged,
    required this.errorText,
    this.maxLines = 1,
  });

  @override
  State<EditProfileInputWidget> createState() => _EditProfileInputWidgetState();
}

class _EditProfileInputWidgetState extends State<EditProfileInputWidget> {
  final _focusNode = FocusNode();
  final _hasFocus = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: _hasFocus,
      builder: (_, hasFocus, ___) {
        return Focus(
          onFocusChange: (isFocus) {
            _hasFocus.value = isFocus;
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _createError(context),
              Container(
                decoration: profileBoxDecoration().copyWith(
                  border: Border.all(
                    color: widget.isError
                        ? $constants.palette.red
                        : hasFocus
                            ? $constants.palette.white
                            : $constants.palette.lightBlue,
                    width: 1.0,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (widget.maxLines != 1) ...{
                      SizedBox(height: $constants.insets.sm),
                      _buildPrefixWidget(),
                    },
                    Row(
                      children: [
                        if (widget.maxLines == 1) _buildPrefixWidget(),
                        Flexible(
                          child: TextField(
                            buildCounter: (
                              BuildContext context, {
                              required int currentLength,
                              required int? maxLength,
                              required bool isFocused,
                            }) =>
                                _buildCounterWidget(currentLength),
                            textAlign: widget.maxLines == 1
                                ? TextAlign.end
                                : TextAlign.start,
                            onTapOutside: (_) {
                              _focusNode.unfocus();
                            },
                            onChanged: (String value) {
                              widget.onTextChanged(value);
                            },
                            maxLines: widget.maxLines,
                            focusNode: _focusNode,
                            decoration: _getDecoration(),
                            controller: widget.controller,
                            style: getTextTheme(context)
                                .bodyMedium!
                                .copyWith(color: $constants.palette.grey),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  InputDecoration _getDecoration() {
    return InputDecoration(
      hintText: widget.placeholder,
      contentPadding: EdgeInsets.all($constants.insets.sm),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular($constants.corners.md)),
        borderSide: BorderSide.none,
      ),
    );
  }

  Widget _buildPrefixWidget() {
    return Padding(
      padding: EdgeInsets.only(
        right: $constants.insets.sm,
        left: $constants.insets.sm,
      ),
      child: Text(
        widget.placeholder,
        style: getTextTheme(context).bodyMedium!.copyWith(
              color: $constants.palette.white,
              fontWeight: FontWeight.w600,
            ),
      ),
    );
  }

  Widget? _buildCounterWidget(int currentLength) {
    if (widget.maxLines != 1) {
      return Padding(
        padding: EdgeInsets.only(bottom: $constants.insets.xs),
        child: Text(
          '$currentLength',
          style: getTextTheme(context).labelMedium?.copyWith(
                color: $constants.palette.darkGrey,
              ),
        ),
      );
    }
    return null;
  }

  Widget _createError(BuildContext context) {
    if (widget.isError) {
      return Container(
        padding: const EdgeInsets.only(bottom: 2),
        child: Text(
          widget.errorText,
          style: getTextTheme(context)
              .labelMedium
              ?.copyWith(color: $constants.palette.red),
        ),
      );
    }
    return const SizedBox();
  }
}
