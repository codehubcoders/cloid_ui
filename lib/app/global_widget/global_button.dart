import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GlobalButton extends GetView {
  final String title;
  final Color bgColor;
  final void Function()? onTap;
  final Size size;
  final Color fontColor;
  final double fontSize;
  const GlobalButton(
      {Key? key,
      required this.fontSize,
      required this.fontColor,
      required this.title,
      required this.bgColor,
      required this.onTap,
      required this.size})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      child: Text(
        title,
        style: TextStyle(
            fontSize: fontSize, color: fontColor, fontWeight: FontWeight.w700),
      ),
      style: ElevatedButton.styleFrom(
          fixedSize: size,
          primary: bgColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
          elevation: 5),
    );
  }
}
