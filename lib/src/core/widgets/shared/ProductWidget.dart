import 'package:x_parts/src/core/utils/app_imports.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget({
    super.key,
    this.color,
    this.largeView = false,
  });

  final bool largeView;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:()=>context.pushNamed(Routes.productDetailsScreen),
      child: Container(
        width: 147.w,
        clipBehavior: Clip.antiAlias,
        margin: EdgeInsets.symmetric(horizontal: 10.w),
        decoration: BoxDecoration(
          color: largeView ? Colors.transparent : color ?? AppColors.brown,
          borderRadius: BorderRadius.circular(30.r),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            /// Image and view icon
            Container(
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30.r),
                  bottomRight: Radius.circular(30.r),
                ),
              ),
              child: Stack(
                alignment: largeView ? Alignment.topLeft : Alignment.topRight,
                children: [
                  Assets.test.backlightGif.image(),

                  /// View - Fav icon
                  largeView
                      ? IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border))
                      : Container(
                          padding: EdgeInsets.all(5.sp),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20.r)),
                            color: color ?? AppColors.brown,
                          ),
                          child: const Icon(
                            Icons.remove_red_eye_outlined,
                            color: Colors.white,
                          ),
                        )
                ],
              ),
            ),

            /// price and review
            SizedBox(
              height: 20.h,
              child: Row(
                children: [
                  Text(
                    '120.50 \$',
                    style: TextStyles.font12WhiteRegular.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  10.isWidth,
                  Expanded(
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 16.sp,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 16.sp,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 16.sp,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 16.sp,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),

            /// description
            10.isHeight,
            Text(
              '12-20 Toyota 86 GT86 13-20 Subaru BRZ 13-20 Scion FR-S'
              ' Full LED',
              style: TextStyles.font4WhiteRegular,
            ),
            10.isHeight,

            /// cart fav share icons
            if (!largeView)
              Container(
                padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 20.w),
                decoration: BoxDecoration(
                    color: Colors.black, borderRadius: BorderRadius.only(topRight: Radius.circular(40.r))),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Assets.svgs.homepage.shoppingBagIcon.svg(),
                    10.isWidth,
                    Assets.svgs.homepage.heartIcon.svg(),
                    10.isWidth,
                    Assets.svgs.homepage.shareIcon.svg(),
                  ],
                ),
              )
          ],
        ),
      ),
    );
  }
}
