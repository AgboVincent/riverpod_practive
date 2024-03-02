import 'package:flutter/material.dart';

class CButton extends StatelessWidget {
  final Function()? onPressed;
  final String? title;
  final Color? fillColor;
  final Color? textColor;
  final double? height;
  final double? width;
  final Widget? child;
  const CButton({
    this.onPressed,
    this.title,
    this.fillColor,
    this.textColor,
    this.height,
    this.width,
    this.child,
    super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        border: fillColor != null ? Border.all(color: Colors.green, width: 1): null,
        borderRadius: BorderRadius.circular(16),
        gradient: fillColor == null ? const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors:  [Color(0XFF27A445), Color(0xFF42AA48), Color(0xFFF4D35E)]): null
      ),
      child: RawMaterialButton(
        fillColor: fillColor,
        onPressed: onPressed,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
           child: child ?? Text(
            title!,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              fontStyle: FontStyle.normal,
              color: textColor 
              ),
           ),
        ) ,
    );
  }
}