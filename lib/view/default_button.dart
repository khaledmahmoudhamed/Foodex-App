import 'package:flutter/material.dart';

class DefaultMaterialButton extends StatelessWidget {

  final double height;
  final double width;
  final double? elevation;
  final double radius;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final Color? splashColor;
  final Widget child;

  const DefaultMaterialButton({
    Key? key,
    this.height = 50,
    this.width = double.infinity,
    this.elevation,
    this.radius = 10,
    this.padding,
    this.margin,
    required this.onPressed,
    this.backgroundColor = Colors.blue,
    this.splashColor,
    required this.child
  }
  ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: padding,
      margin: margin,
      child: MaterialButton(
        elevation: elevation,
        onPressed: onPressed,
        color: backgroundColor,
        splashColor: splashColor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(radius))
        ),
        child: child,
      ),
    );
  }
}
