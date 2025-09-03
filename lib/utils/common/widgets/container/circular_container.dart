import 'package:flutter/material.dart';

class CircularContainer extends StatelessWidget {
  const CircularContainer({
    super.key,
    this.child,
    this.backgroundColor,
    this.backgroundImage,
    this.width,
    this.height,
    this.onTap,
    this.shadowBlurRadius,
    this.shadowSpreadRadius,
    this.shadowColor,
    this.shadowOffset,
  });

  final Widget? child;
  final Color? backgroundColor;
  final ImageProvider? backgroundImage;
  final double? width;
  final double? height;
  final VoidCallback? onTap;
  final double? shadowBlurRadius;
  final double? shadowSpreadRadius;
  final Color? shadowColor;
  final Offset? shadowOffset;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.all(Radius.circular(10)),
      child: Container(
        width: width ?? 36,
        height: height ?? 36,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: backgroundColor ?? Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: shadowBlurRadius ?? 0,
              offset: shadowOffset ?? Offset.zero,
              spreadRadius: shadowSpreadRadius ?? 0,
              color: shadowColor ?? Colors.black,
              blurStyle: BlurStyle.solid,
            ),
          ],
          image: backgroundImage != null
              ? DecorationImage(image: backgroundImage!, fit: BoxFit.contain)
              : null,
        ),
        padding: EdgeInsets.all(8),
        child: child,
      ),
    );
  }
}
