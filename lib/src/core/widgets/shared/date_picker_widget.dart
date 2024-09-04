
import 'package:x_parts/src/core/utils/app_imports.dart';

class DatePickerWidget extends StatelessWidget {
  const DatePickerWidget({super.key, this.fillColor});

  final Color? fillColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => showDatePicker(
        context: context,
        firstDate: DateTime.now(),
        lastDate: DateTime(DateTime.now().year + 1),
      ),
      child: Container(
        padding: EdgeInsets.all(10.sp),
        margin: EdgeInsets.symmetric(vertical: 10.sp),
        decoration: BoxDecoration(
          color: fillColor ?? AppColors.mainDarkColor,
          borderRadius: BorderRadius.circular(10.r),
          border: Border.all(color: Colors.grey.shade300),
        ),
        child: IntrinsicHeight(
          child: Row(
            children: [
              Icon(Icons.calendar_today, color: Colors.grey.shade300),
              5.isWidth,
              const VerticalDivider(),
              5.isWidth,
              Text(
                '7-9-2024',
                style: TextStyles.font12WhiteRegular.copyWith(fontWeight: FontWeight.w400),
              )
            ],
          ),
        ),
      ),
    );
  }
}
