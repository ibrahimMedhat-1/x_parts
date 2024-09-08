import 'package:x_parts/src/core/utils/app_imports.dart';

class TitleRowWidget extends StatelessWidget {
  const TitleRowWidget({
    super.key,
    required this.title,
    this.onTap,
    this.dividerColor = AppColors.mainPinkColor,
    this.textColor,
  });

  final Color dividerColor;
  final Color? textColor;
  final String title;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IntrinsicHeight(
          child: Row(
            children: [
              Container(
                width: 8,
                margin: const EdgeInsets.only(right: 10),
                height: double.infinity,
                decoration: BoxDecoration(
                  color: dividerColor,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                title,
                style: TextStyle(
                  color: textColor ?? Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 20.sp,
                ),
              ),
            ],
          ),
        ),
        if (onTap != null)
          InkWell(
              onTap: onTap,
              child: Text(
                "See All",
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.white),
              )),
      ],
    );
  }
}
