import 'package:flutter/material.dart';

class MyIcon extends StatelessWidget {
  final Widget child;
  final void Function()? onTap;
  final BoxShape boxShape;
  final Color borderColor;
  final BorderRadiusGeometry? borderRadius;
  final EdgeInsetsGeometry? padding;
  const MyIcon(
    this.child,
    this.borderColor, {
    super.key,
    this.onTap,
    this.boxShape = BoxShape.rectangle,
    this.borderRadius,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            shape: boxShape,
            border: Border.all(color: borderColor),
            borderRadius: borderRadius),
        padding: padding,
        child: Center(child: child),
      ),
    );
  }
}
