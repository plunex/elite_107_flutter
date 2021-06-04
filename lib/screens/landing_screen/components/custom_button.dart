import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Function onTap;
  final Color backgroundColor;
  final Color borderColor;
  final String text;
  final Color textColor;
  const CustomButton({
    Key key,
    @required this.onTap,
    @required this.backgroundColor,
    @required this.borderColor,
    @required this.text,
    this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 64,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: backgroundColor,
          border: Border.all(
            color: borderColor ?? Colors.transparent,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(30),
          ),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: textColor,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
