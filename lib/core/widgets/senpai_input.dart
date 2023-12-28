import 'package:flutter/material.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class SenpaiInput extends StatefulWidget {
  final String placeholder;
  final String errorText;
  final bool isError;
  final bool isValid;
  final TextEditingController controller;
  final Function(String) onTextChanged;
  final TextInputType? keyboardType;
  final VoidCallback? onTap;
  final int maxLines;

  const SenpaiInput({
    super.key,
    required this.placeholder,
    this.isError = false,
    this.isValid = false,
    required this.controller,
    required this.onTextChanged,
    required this.errorText,
    this.keyboardType = TextInputType.text,
    this.onTap,
    this.maxLines = 1,
  });

  @override
  State<SenpaiInput> createState() => _SenpaiInputState();
}

class _SenpaiInputState extends State<SenpaiInput> {
  final focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _createError(context),
        Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular($constants.corners.md),
                  shape: BoxShape.rectangle,
                  border: Border.all(
                    color: widget.isError
                        ? $constants.palette.red
                        : widget.isValid
                            ? $constants.palette.pink
                            : $constants.palette.buttonBorder,
                    width: 1.0,
                  ),
                ),
                child: TextField(
                  readOnly: widget.onTap != null,
                  onTap: widget.onTap,
                  onTapOutside: (_) {
                    focusNode.unfocus();
                  },
                  onChanged: (String value) {
                    widget.onTextChanged(value);
                  },
                  maxLines: widget.maxLines,
                  focusNode: focusNode,
                  decoration: _getDecoration(),
                  controller: widget.controller,
                  style: getTextTheme(context)
                      .bodyMedium
                      ?.copyWith(color: $constants.palette.white),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  InputDecoration _getDecoration() {
    return InputDecoration(
      hintText: widget.placeholder,
      hintStyle: getTextTheme(context)
          .bodyMedium!
          .copyWith(color: $constants.palette.darkGrey),
      border: const OutlineInputBorder(
        borderSide: BorderSide.none,
      ),
    );
  }

  Widget _createError(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 2),
      child: Text(
        widget.isError ? widget.errorText : '',
        style: getTextTheme(context)
            .labelMedium
            ?.copyWith(color: $constants.palette.red),
      ),
    );
  }
}
