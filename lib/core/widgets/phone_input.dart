import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class SenpaiPhoneInput extends StatefulWidget {
  final String placeholder;
  final String errorText;
  final bool isError;
  final TextEditingController controller;
  final VoidCallback onTextChanged;
  final TextInputType? keyboardType;

  const SenpaiPhoneInput({
    super.key,
    required this.placeholder,
    this.isError = false,
    required this.controller,
    required this.onTextChanged,
    required this.errorText,
    this.keyboardType = TextInputType.number,
  });

  @override
  _SenpaiPhoneInputState createState() => _SenpaiPhoneInputState();
}

class _SenpaiPhoneInputState extends State<SenpaiPhoneInput> {
  final focusNode = FocusNode();

  bool stateIsError = false;

  @override
  void initState() {
    super.initState();

    focusNode.addListener(
      () {
        setState(() {
          if (focusNode.hasFocus) {
            stateIsError = false;
          }
        });
      },
    );

    stateIsError = widget.isError;
  }

  @override
  void didUpdateWidget(covariant SenpaiPhoneInput oldWidget) {
    super.didUpdateWidget(oldWidget);

    stateIsError = focusNode.hasFocus ? false : widget.isError;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (stateIsError) ...[_createError(context)],
        Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular($constants.corners.md),
                  shape: BoxShape.rectangle,
                  border: Border.all(
                      color: stateIsError
                          ? $constants.palette.red
                          : $constants.palette.buttonBorder,
                      width: 1.0),
                  // Separator
                ),
                child: InternationalPhoneNumberInput(
                  onInputChanged: (PhoneNumber phoneNumber) {
                    setState(() {});
                    widget.onTextChanged();
                  },
                  inputBorder: const OutlineInputBorder(
                    borderSide: BorderSide.none, // No border for inner input
                  ),
                  hintText: widget.placeholder,
                  focusNode: focusNode,
                  textFieldController: widget.controller,
                  keyboardType: widget.keyboardType!,
                  autoValidateMode: AutovalidateMode.disabled,
                  initialValue: PhoneNumber(isoCode: 'US'),
                  textStyle: getTextTheme(context)
                      .bodyMedium
                      ?.copyWith(color: $constants.palette.white),
                  selectorTextStyle: getTextTheme(context)
                      .bodyMedium
                      ?.copyWith(color: $constants.palette.white),
                  searchBoxDecoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: $constants.palette.buttonBorder),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _createError(BuildContext context) {
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
}
