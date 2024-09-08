import 'package:x_parts/src/core/utils/app_imports.dart';

class LabelPriceTextWidget extends StatelessWidget {
  const LabelPriceTextWidget({
    super.key,
    required this.label,
    required this.price,
    this.isDark = false,
  });

  final String label;
  final String price;
  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label,
            style: TextStyles.font13BlackMedium.copyWith(
              color: isDark ? Colors.white : Colors.black,
            )),
        Text(price,
            style: TextStyles.font15BlackMedium.copyWith(
              color: isDark ? Colors.white : Colors.black,
            )),
      ],
    );
  }
}
