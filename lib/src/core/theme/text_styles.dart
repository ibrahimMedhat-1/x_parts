import 'package:x_parts/src/core/utils/app_imports.dart';

abstract class TextStyles {
  static TextStyle font24WhiteMedium = TextStyle(
    fontSize: 24.sp,
    color: Colors.white,
    fontWeight: FontWeightHelper.medium,
  );
  static TextStyle font16GreyRegular = TextStyle(
    fontSize: 16.sp,
    color: Colors.grey,
    fontWeight: FontWeightHelper.regular,
  );
  static TextStyle font12WhiteRegular = TextStyle(
    fontSize: 12.sp,
    color: Colors.white,
    fontWeight: FontWeightHelper.regular,
  );
}
