import 'package:x_parts/src/core/utils/app_imports.dart';

class TextFormFieldCustomized extends StatefulWidget {
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
  State<TextFormFieldCustomized> createState() => _TextFormFieldCustomizedState();
}

class _TextFormFieldCustomizedState extends State<TextFormFieldCustomized> {
  bool isFocus = false;

  @override
  Widget build(BuildContext context) {
    final OutlineInputBorder border = OutlineInputBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(widget.topLeftRadius),
        topRight: Radius.circular(widget.topRightRadius),
        bottomLeft: Radius.circular(widget.bottomLeftRadius),
        bottomRight: Radius.circular(widget.bottomRightRadius),
      ),
      borderSide: BorderSide(color: widget.borderColor ?? Colors.transparent),
    );
    return InkWell(
      onTap: widget.onTap,
      child: SizedBox(
        height: widget.height,
        width: widget.width,
        child: TextFormField(
          expands: widget.height != null,
          inputFormatters: widget.inputFormatters,
          style: TextStyle(
            color: widget.enabled
                ? widget.textColor ?? Colors.white
                : Theme.of(context).textTheme.bodyLarge!.color,
          ),
          maxLength: widget.maxCharacters,
          keyboardType: widget.keyboardType,
          obscureText: widget.obscureText,
          enabled: widget.enabled,
          controller: widget.controller,
          onChanged: widget.onChanged,
          cursorColor: Colors.black,
          // autofocus: widget.autoFocus ?? true,
          focusNode: widget.focusNode,
          minLines: widget.minLines,
          maxLines: widget.maxLines ?? widget.minLines,
          onFieldSubmitted: widget.onFieldSubmitted,
          onTapOutside: (event) {
            setState(() {
            FocusScope.of(context).unfocus();
              isFocus=false;
            });
          },
          validator: (value) {
            if (value != null && value.isNotEmpty) {
              if (widget.minLength != 0) {
                if (value.length < widget.minLength) {
                  return 'Must be ${widget.minLength} numbers';
                } else {
                  return null;
                }
              }
              return null;
            } else {
              return widget.validationMessage;
            }
          },
          onTap: () {
            setState(() {
              isFocus=true;
            });
          },
          decoration: InputDecoration(
            counterText: '',
            filled: true,
            fillColor: widget.fillColor ?? AppColors.mainDarkColor,
            contentPadding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
            border: border,
            enabledBorder: border,
            disabledBorder: border,
            focusedBorder: border,
            hintText: widget.hintText,
            label: widget.label != null
                ? Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('${widget.label}', style: TextStyles.font12WhiteRegular),
                      if (widget.labelDesc != null && !isFocus)
                        Text('${widget.labelDesc}', style: TextStyles.font16GreyRegular),
                    ],
                  )
                : null,
            hintStyle: TextStyle(color: widget.hintColor ?? Colors.grey.shade400, fontSize: 12.sp),
            prefixIcon: widget.prefixIcon,
            suffixIcon: IconButton(
              onPressed: widget.onSuffixPressed,
              icon: widget.suffixIcon ?? const SizedBox(),
            ),
          ),
        ),
      ),
    );
  }
}
