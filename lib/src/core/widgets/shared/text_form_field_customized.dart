import 'package:x_parts/src/core/utils/app_imports.dart';

class TextFormFieldCustomized extends StatelessWidget {
  final String? hintText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final Color? suffixIconColor;
  final TextEditingController? controller;
  final bool enabled;
  final VoidCallback? onSuffixPressed;
  final VoidCallback? onTap;
  final String? validationMessage;
  final bool obscureText;
  final Function(String value)? onChanged;
  final TextInputType keyboardType;
  final Color? fillColor;
  final Color? borderColor;
  final Color? textColor;
  final double topLeftRadius;
  final double topRightRadius;
  final double bottomLeftRadius;
  final double bottomRightRadius;
  final int? maxCharacters;
  final int minLength;
  final Color? hintColor;
  final List<TextInputFormatter>? inputFormatters;
  final Function(String value)? onFieldSubmitted;
  final FocusNode? focusNode;
  final bool? autoFocus;
  final int? minLines;
  final int? maxLines;
  final double? height;
  final double? width;
  final String? label;
  final String? labelDesc;

  const TextFormFieldCustomized({
    this.maxCharacters,
    this.autoFocus,
    this.label,
    this.labelDesc,
    this.height,
    this.width,
    this.minLines,
    this.maxLines,
    this.onFieldSubmitted,
    this.focusNode,
    this.inputFormatters,
    this.textColor,
    this.hintColor,
    this.minLength = 0,
    this.fillColor,
    this.borderColor,
    this.topLeftRadius = 25,
    this.topRightRadius = 25,
    this.bottomLeftRadius = 25,
    this.bottomRightRadius = 25,
    required this.enabled,
    required this.obscureText,
    required this.keyboardType,
    this.onSuffixPressed,
    this.onChanged,
    this.controller,
    this.hintText,
    this.suffixIcon,
    this.suffixIconColor,
    this.onTap,
    this.validationMessage,
    this.prefixIcon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final OutlineInputBorder border = OutlineInputBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(topLeftRadius),
        topRight: Radius.circular(topRightRadius),
        bottomLeft: Radius.circular(bottomLeftRadius),
        bottomRight: Radius.circular(bottomRightRadius),
      ),
      borderSide: BorderSide(color: borderColor ?? Colors.transparent),
    );
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        height: height,
        width: width,
        child: TextFormField(
          expands: height != null,
          inputFormatters: inputFormatters,
          style: TextStyle(
            color: enabled ? textColor ?? Colors.white : Theme.of(context).textTheme.bodyLarge!.color,
          ),
          maxLength: maxCharacters,
          keyboardType: keyboardType,
          obscureText: obscureText,
          enabled: enabled,
          controller: controller,
          onChanged: onChanged,
          cursorColor: Colors.black,
          autofocus: autoFocus ?? true,
          focusNode: focusNode,
          minLines: minLines,
          maxLines: maxLines ?? minLines ,
          onFieldSubmitted: onFieldSubmitted,
          onTapOutside: (event) => FocusScope.of(context).unfocus(),
          validator: (value) {
            if (value != null && value.isNotEmpty) {
              if (minLength != 0) {
                if (value.length < minLength) {
                  return 'Must be $minLength numbers';
                } else {
                  return null;
                }
              }
              return null;
            } else {
              return validationMessage;
            }
          },
          decoration: InputDecoration(
            counterText: '',
            filled: true,
            fillColor: fillColor ?? AppColors.mainDarkColor,
            contentPadding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
            border: border,
            enabledBorder: border,
            disabledBorder: border,
            focusedBorder: border,
            hintText: hintText,
            label: label != null
                ? RichText(
                    text: TextSpan(children: [
                    TextSpan(text: '$label\n', style: TextStyles.font12WhiteRegular),
                    if (labelDesc != null)
                      TextSpan(text: '$labelDesc', style: TextStyles.font16GreyRegular),
                  ]))
                : null,
            hintStyle: TextStyle(color: hintColor ?? Colors.grey.shade400, fontSize: 12.sp),
            prefixIcon: prefixIcon,
            suffixIcon: IconButton(
              onPressed: onSuffixPressed,
              icon: suffixIcon ?? const SizedBox(),
            ),
          ),
        ),
      ),
    );
  }
}
