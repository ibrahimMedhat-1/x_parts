import 'package:x_parts/src/core/utils/app_imports.dart';

class BottomCheckOutWidget extends StatelessWidget {
  const BottomCheckOutWidget({
    super.key,
    required this.onTap,
    this.isDark = false,
  });

  final VoidCallback onTap;
  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 322.h,
      padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 25.h),
      decoration: BoxDecoration(
        color: isDark ? Colors.black : AppColors.pinkColor,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(46.r),
          topLeft: Radius.circular(46.r),
        ),
      ),
      child: Column(
        children: [
          LabelPriceTextWidget(
            label: 'Subtotals for products',
            price: '\$345',
            isDark: isDark,
          ),
          10.isHeight,
          LabelPriceTextWidget(
            label: 'Delivery Subtotals ',
            price: '\$5',
            isDark: isDark,
          ),
          10.isHeight,
          LabelPriceTextWidget(
            label: 'Discount Vouchers',
            price: '-\$',
            isDark: isDark,
          ),
          const Spacer(),
          MySeparator(
            color: isDark ? Colors.white : Colors.black,
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Total',
                  style: TextStyles.font24WhiteMedium
                      .copyWith(color: isDark ? Colors.white : Colors.black)),
              Text('\$345',
                  style: TextStyles.font24WhiteMedium
                      .copyWith(color: isDark ? Colors.white : Colors.black)),
            ],
          ),
          const Spacer(),
          ButtonWidget(
            onTap: onTap,
            minWidth: double.infinity,
            buttonColor: isDark ? Colors.white : Colors.black,
            textColor: isDark ? Colors.black : Colors.white,
            text: 'Checkout',
            height: 60.h,
            bottomLeftRadius: 0,
          )
        ],
      ),
    );
  }
}
