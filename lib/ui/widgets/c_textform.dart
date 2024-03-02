import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class CTextFormField extends StatelessWidget {
  const CTextFormField({
    this.inputFormatters,
    this.minLines = 5,
    this.maxLength,
    this.showCounter,
    this.multiLine = false,
    this.isLastTextField = false,
    this.obscureText,
    this.autoValidate = false,
    this.autovalidateMode,
    this.enabled,
    this.textString,
    this.initialValue,
    this.hintText,
    this.labelText,
    this.style,
    this.controller,
    this.onSaved,
    this.validator,
    this.onChanged,
    this.keyboardType,
    this.onTap,
    this.textAlign = TextAlign.left,
    this.trailingIcon,
    this.prefixIcon,
    this.autofillHints,
    this.onEditingComplete,
    this.focusNode,
    this.paddingVertical,
    this.readOnly = false,
    super.key});


  final List<TextInputFormatter>? inputFormatters;
  final int? minLines;
  final int? maxLength;
  final bool? showCounter;
  final bool multiLine;
  final bool isLastTextField;
  final bool? obscureText;
  final bool autoValidate;
  final AutovalidateMode? autovalidateMode;
  final bool? enabled;
  final String? textString;
  final String? initialValue;
  final String? hintText;
  final String? labelText;
  final TextStyle? style;
  final TextEditingController? controller;
  final Function(String?)? onSaved;
  final String? Function(String?)? validator;
  final Function(String?)? onChanged;
  final TextInputType? keyboardType;
  final Function()? onTap;
  final TextAlign textAlign;
  final Widget? trailingIcon;
  final Widget? prefixIcon;
  final Iterable<String>? autofillHints;
  final Function? onEditingComplete;
  final FocusNode? focusNode;
  final double? paddingVertical;
  final bool readOnly;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: focusNode,
      enabled: enabled,
      style: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500
      ),
      readOnly: readOnly,
      inputFormatters: inputFormatters,
      maxLength: maxLength,
      obscureText: obscureText ?? false,
      onTap: onTap,
      initialValue: initialValue,
      controller: controller,
      autovalidateMode: autovalidateMode ?? AutovalidateMode.disabled,
      autofillHints: autofillHints,
      validator: validator,
      onSaved: onSaved,
      onChanged: onChanged,
      keyboardType: keyboardType,
      textAlign: textAlign,
      minLines: multiLine ? minLines: 1,
      maxLines: multiLine ? minLines! *2 : 1,
      textInputAction: isLastTextField ? TextInputAction.done : TextInputAction.next,
      onFieldSubmitted: (_) => isLastTextField ? null : FocusScope.of(context).nextFocus(),
      decoration: InputDecoration(
        counter: Offstage(),
        contentPadding: EdgeInsets.symmetric(vertical: paddingVertical ?? 18.0, horizontal:  20),
        hintText: hintText,
        isDense: true,
       // hintStyle: AppStyles
       filled: true,
       //fillColor: 
       border: OutlineInputBorder(
         borderRadius: BorderRadius.circular(20),
         borderSide: const BorderSide(
          //color: 
          )
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(
            color: Colors.black
            )
          ),
          suffixIcon: trailingIcon ?? const SizedBox(),
          prefixIcon: prefixIcon,
          enabledBorder: OutlineInputBorder(
            borderRadius:BorderRadius.circular(20),
            borderSide: const BorderSide(
              color: Colors.red
            ) 
          )
      )
    );
  }
}