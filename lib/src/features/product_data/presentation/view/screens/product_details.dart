import 'package:x_parts/src/core/utils/app_imports.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarDefault(
        title: '',
        backgroundColor: AppColors.darkGreyColor,
        actions: [CircularButtonCustomized(icon: Icons.favorite_border)],
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 22.h),
            decoration: BoxDecoration(
              color: AppColors.darkGreyColor,
                borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(50.r),
            bottomLeft: Radius.circular(50.r),
            )),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HomeCarouselSliderStackWidget(products: ['', '', '']),
                40.isHeight,
                const HomeRowWidget(children: [
                  SparePartImage(),
                  SparePartImage(),
                  SparePartImage(),
                  SparePartImage(),
                  SparePartImage(),
                  SparePartImage(),
                ]),
                30.isHeight,
                Text(
                  'Compatible with Dongfeng Fengshen A60 rearview mirror assembly, '
                  '2012 2013 2014 2015 2016 reversing mirror shell with painted E70 left '
                  'and right reflectors',
                  style: TextStyles.font12WhiteRegular,
                ),
                20.isHeight,
                Row(
                  children: [
                    Text('Head Lights', style: TextStyles.font18WhiteMedium),
                    const Spacer(),
                    Text('\$120.50', style: TextStyles.font18WhiteMedium),
                    10.isWidth,
                    Text(
                      '\$180.50',
                      style: TextStyles.font10WhitBold.copyWith(
                        color: Colors.red,
                        decorationThickness: 3,
                        decoration: TextDecoration.lineThrough,
                        decorationColor: Colors.red,
                      ),
                    ),
                  ],
                ),
                30.isHeight,
                const DotListItem(label: 'Usually 3 working days, in some big orders 5 working days.'),
                20.isHeight,
                const DotListItem(
                    label:
                        'We have 3 Shipping methods, Express (4-8) days, Normal (12-18) days, and Economic (40-50) days.'),
                20.isHeight,
                const DotListItem(
                    label:
                        'if couldn\'t find a part you can Enquire Now directly from our 24 hours online services.'),
              ],
            ),
          ),
          const Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 22.h),

            child: Row(
              children: [
                ButtonWidget(
                  onTap: () =>context.pushNamed(Routes.cartScreen),
                  widget: Assets.svgs.productDetails.cartIcon.svg(),
                  height: 60.h,
                  bottomRightRadius: 0,
                ),
                20.isWidth,
                Expanded(
                  child: ButtonWidget(
                    bottomLeftRadius: 0,
                    height: 60.h,
                    onTap: () =>context.pushNamed(Routes.checkoutScreen),
                    text: 'Buy Now',
                    textColor: Colors.black,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class DotListItem extends StatelessWidget {
  const DotListItem({super.key, required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 10.h,
          width: 10.w,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
          ),
        ),
        10.isWidth,
        Expanded(
            child: Text(
          label,
          style: TextStyles.font10WhitBold,
        )),
      ],
    );
  }
}

class SparePartImage extends StatelessWidget {
  const SparePartImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      margin: EdgeInsets.symmetric(horizontal: 10.w),
      height: 46.h,
      width: 48.w,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.r)),
      child: Assets.test.backlightGif.image(),
    );
  }
}
