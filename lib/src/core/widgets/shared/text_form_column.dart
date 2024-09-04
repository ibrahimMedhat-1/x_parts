
import 'package:x_parts/src/core/utils/app_imports.dart';

class TextFormFieldColumn extends StatelessWidget {
  final String? label;
  final Color? hintColor;
  final String? validationMessage;
  final String? hintText;
  final Widget? suffixIcon;
  final Color? suffixIconColor;
  final TextEditingController? controller;
  final bool enabled;
  final VoidCallback? onSuffixPressed;
  final VoidCallback? onTap;
  final bool obscureText;
  final Function(String value)? onChanged;
  final TextInputType keyboardType;
  final int minLength;
  final int? maxLength;
  final List<TextInputFormatter>? inputFormatters;
  final bool? autoFocus;

  const TextFormFieldColumn({
    this.maxLength,
    this.autoFocus,
    this.hintColor,
    this.inputFormatters,
    required this.keyboardType,
    this.onSuffixPressed,
    this.minLength = 0,
    this.enabled = true,
    this.obscureText = false,
    this.label,
    this.onChanged,
    this.hintText,
    this.suffixIcon,
    this.suffixIconColor,
    this.controller,
    this.onTap,
    this.validationMessage,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (label != null) Text(label!),
          const SizedBox(height: 10),
          TextFormFieldCustomized(
            autoFocus: autoFocus,
            inputFormatters: inputFormatters,
            hintColor: hintColor,
            maxCharacters: maxLength,
            minLength: minLength,
            keyboardType: keyboardType,
            onChanged: onChanged,
            validationMessage: validationMessage,
            obscureText: obscureText,
            onSuffixPressed: onSuffixPressed,
            enabled: enabled,
            controller: controller,
            suffixIcon: suffixIcon,
            hintText: hintText,
            suffixIconColor: suffixIconColor,
            onTap: onTap,
          ),
        ],
      ),
    );
  }
}
