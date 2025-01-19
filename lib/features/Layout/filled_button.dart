import 'package:flutter/material.dart';

class FilledButtonWidget extends StatelessWidget {
  final String type;
  final Color backgroundColor;
  final Color foregroundColor; ///text color
  final double borderRadius;
  final double fontSize;
  final Color fontColor;
  final FontWeight fontWeight;
  final IconData? icon; ///prefix icon
  final double iconSize;
  final Color? iconColor;
  final bool isEnabled; ///lw 3yza button ykon mawgod bas not clickable
  final List<BoxShadow>? boxShadow; ///shadow el wra el button
  final bool isLoading; /// lw el button by7aml fa ygel shakl el loading
  final Duration delay; /// el wa2t el hyakhdo 3la ma ynafez el onPress
  final VoidCallback? onPressed;
  final bool isIconPrefix; ///to make it suffix icon

  FilledButtonWidget({
    super.key,
    required this.type,
    this.backgroundColor = const Color(0xFFCCCCCC),
    this.foregroundColor = const Color(0xFF000000),
    this.borderRadius = 10.0,
    this.fontSize = 16.0,
    this.fontColor = Colors.white,
    this.fontWeight = FontWeight.w700,
    this.icon,
    this.iconSize = 24.0,
    this.iconColor,
    this.isEnabled = true,
    this.boxShadow,
    this.isLoading = false,
    this.delay = const Duration(seconds: 0),
    this.onPressed,
    this.isIconPrefix = true,
  });

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      style: FilledButton.styleFrom(
        backgroundColor: isEnabled
            ? backgroundColor
            : Colors.grey.withOpacity(0.5),
        foregroundColor: foregroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        shadowColor: boxShadow != null ? boxShadow!.first.color : null,
        elevation: boxShadow != null ? 5.0 : 0.0,
      ),
      onPressed: isEnabled
          ? () async {
        if (delay.inMilliseconds > 0) {
          await Future.delayed(delay);
        }
        if (onPressed != null) {
          onPressed!();
        }
      }
          : null,
      child: isLoading
          ? SizedBox(
        width: 20,
        height: 20,
        child: CircularProgressIndicator(
          color: fontColor,
          strokeWidth: 2,
        ),
      )
          : Row(
        mainAxisSize: MainAxisSize.min,
        children: isIconPrefix
            ? [
          if (icon != null)
            Icon(icon, size: iconSize, color: iconColor ?? fontColor),
          if (icon != null) SizedBox(width: 8),
          Text(
            type,
            style: TextStyle(
              fontFamily: "Janna",
              fontWeight: fontWeight,
              fontSize: fontSize,
              color: fontColor,
            ),
          ),
        ]
            : [
          Text(
            type,
            style: TextStyle(
                          fontFamily: "Janna",
                          fontWeight: fontWeight,
              fontSize: fontSize,
              color: fontColor,
            ),
          ),
          if (icon != null) SizedBox(width: 8),
          if (icon != null)
            Icon(icon, size: iconSize, color: iconColor ?? fontColor),
        ],
      ),
    );
  }
}
