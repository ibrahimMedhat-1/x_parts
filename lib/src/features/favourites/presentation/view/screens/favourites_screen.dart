import 'package:x_parts/src/core/utils/app_imports.dart';

class FavouritesScreen extends StatelessWidget {
  const FavouritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarDefault(
        title: 'Wishlist',
        backgroundColor: AppColors.darkGreyColor,
        leading: IconButton(
          onPressed: () {},
          icon: Assets.svgs.bottomNavBarIcons.categoriesIcon.svg(),
        ),
        actions: [
          Stack(
            children: [
              IconButton(
                onPressed: () {},
                padding: EdgeInsets.zero,
                splashRadius: 1,
                icon: Assets.svgs.homepage.shoppingBagIcon.svg(fit: BoxFit.fill),
              ),
              Container(
                height: 26.h,
                width: 26.w,
                decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.red),
                child: Center(
                    child: Text(
                  '3',
                  style: TextStyles.font10WhitBold,
                )),
              ),
            ],
          ),
        ],
      ),
      body: Container(
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          color: AppColors.darkGreyColor,
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(40.r),
            bottomLeft: Radius.circular(40.r),
          ),
          boxShadow: [BoxShadow(
            color: Colors.white,
            blurRadius: 20
          )]
        ),
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 5.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              40.isHeight,
              const HomeSearchFilterWidget(),
              40.isHeight,
              HomeRowWidget(
                children: [
                  BrandWidget(
                    label: 'BMW',
                    image: Assets.test.bmwImage,
                  ),
                  BrandWidget(
                    label: 'Audi',
                    image: Assets.test.mercedesImage,
                  ),
                ],
              ),
              40.isHeight,
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Items(45)',
                      style: TextStyles.font12WhiteRegular,
                    ),
                    Text(
                      'see all',
                      style: TextStyles.font12WhiteRegular,
                    ),
                  ],
                ),
              ),
              30.isHeight,
              GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                childAspectRatio: 1.w/1.5.h,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  ProductWidget(largeView: true),
                  ProductWidget(largeView: true),
                  ProductWidget(largeView: true),
                  ProductWidget(largeView: true),
                  ProductWidget(largeView: true),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class BrandWidget extends StatelessWidget {
  const BrandWidget({
    super.key,
    required this.label,
    required this.image,
  });

  final String label;
  final AssetGenImage image;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10.w),
          height: 71.h,
          width: 100.w,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(20.r),
          ),
          child: image.image(fit: BoxFit.fill),
        ),
        Text(
          label,
          style: TextStyles.font10WhitBold,
        )
      ],
    );
  }
}
