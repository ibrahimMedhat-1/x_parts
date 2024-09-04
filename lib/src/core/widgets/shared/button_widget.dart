import 'package:x_parts/src/core/utils/app_imports.dart';

class ButtonWidget extends StatelessWidget {
  final String? text;
  final Widget? widget;
  final double? minWidth;
  final VoidCallback onTap;
  final bool isHollow;
  final double topPadding;
  final double bottomPadding;
  final double rightPadding;
  final double leftPadding;
  final double? height;
  final Color? buttonColor;
  final bool enabled;
  final Color? textColor;
  final TextStyle? textStyle;
  final Color? borderColor;
  final double topLeftRadius;
  final double topRightRadius;
  final double bottomLeftRadius;
  final double bottomRightRadius;

  const ButtonWidget({
    this.textColor,
    this.textStyle,
    this.borderColor,
    this.topLeftRadius = 25,
    this.topRightRadius = 0,
    this.bottomLeftRadius = 25,
    this.bottomRightRadius = 25,
    this.height,
    this.enabled = true,
    this.buttonColor,
    this.topPadding = 0,
    this.bottomPadding = 0,
    this.rightPadding = 0,
    this.leftPadding = 0,
    this.isHollow = false,
    required this.onTap,
    this.widget,
    this.minWidth,
    this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: height,
      padding: EdgeInsets.only(
        top: topPadding,
        bottom: bottomPadding,
        left: leftPadding,
        right: rightPadding,
      ),
      elevation: isHollow ? 0 : null,
      color: isHollow
          ? Colors.transparent
          : enabled
              ? buttonColor ?? AppColors.mainPinkColor
              : Colors.grey,
      minWidth: minWidth,
      shape: OutlineInputBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(topLeftRadius),
          topRight: Radius.circular(topRightRadius),
          bottomLeft: Radius.circular(bottomLeftRadius),
          bottomRight: Radius.circular(bottomRightRadius),
        ),
        borderSide:
            BorderSide(color: isHollow ? AppColors.mainPinkColor : borderColor ?? Colors.transparent),
      ),
      onPressed: () {
        if (enabled) {
          onTap();
        }
      },
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          widget ?? const SizedBox(),
          if (widget != null && text != null)
            Row(
              children: [
                10.isWidth,
              ],
            ),
          if (text != null)
            ConstrainedBox(
              constraints: BoxConstraints(maxWidth: MediaQuery.sizeOf(context).width - 60),
              child: Text(
                text!,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                textAlign: TextAlign.center,
                style: textStyle ??
                    TextStyle(
                      color: isHollow ? AppColors.mainPinkColor : textColor ?? Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
        ],
      ),
    );
  }
}
