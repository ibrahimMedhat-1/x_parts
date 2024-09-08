import 'package:x_parts/src/core/utils/app_imports.dart';

class CartItemWidget extends StatelessWidget {
  const CartItemWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.sp),
      decoration: BoxDecoration(
        color: AppColors.mainDarkColor,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Row(
        children: [
          Container(
            height: 75.h,
            width: 101.h,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: Assets.test.backlightGif.image(fit: BoxFit.fill),
          ),
          10.isWidth,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Head Lights',
                style: TextStyles.font15BlackMedium.copyWith(color: Colors.white),
              ),
              Text(
                'Model 2020',
                style: TextStyles.font10WhitBold.copyWith(
                  fontWeight: FontWeightHelper.regular,
                ),
              ),
              Text('\$345', style: TextStyles.font12WhiteRegular),
            ],
          ),
          const Spacer(),
          const CounterWidget(),
        ],
      ),
    );
  }
}
