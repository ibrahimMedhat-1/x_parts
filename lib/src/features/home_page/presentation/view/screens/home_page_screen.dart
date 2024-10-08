import 'package:x_parts/src/core/utils/app_imports.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Future.delayed(const Duration(seconds: 5)).then((onValue) {
    //   if (context.mounted) {
    //     showModalBottomSheet(
    //       context: context,
    //       isScrollControlled: true,
    //       useSafeArea: true,
    //
    //       builder: (context) => const SubscribeBottomSheetBody(),
    //     );
    //   }
    // });
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Stack(
              children: [
                Assets.svgs.homepage.homePageHeaderBackground.svg(fit: BoxFit.fill, width: 390.w,height: 600.h),
                Column(
                  children: [
                    const HomeAppBarWidget(),
                    const OffersList(),
                    40.isHeight,
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const HomeSearchFilterWidget(),
                          30.isHeight,
                          const HomeCarouselSliderColumnWidget(products: [SizedBox(), SizedBox()]),
                          30.isHeight,
                          HomeRowWidget(
                            title: 'Categories',
                            onTap: () {},
                            children: [
                              CategoryWidget(
                                brandLogo: Assets.test.accessories.path,
                                onTap: () {},
                                label: 'Accessories',
                              ),
                              CategoryWidget(
                                brandLogo: Assets.test.performance.path,
                                onTap: () {},
                                label: 'Performance',
                              ),
                              CategoryWidget(
                                brandLogo: Assets.test.suspension.path,
                                onTap: () {},
                                label: 'Suspension',
                              ),
                            ],
                          ),
                          30.isHeight,
                          HomeRowWidget(
                            title: 'Best Selling',
                            onTap: () {},
                            children: const [
                              ProductWidget(),
                              ProductWidget(),
                              ProductWidget(),
                              ProductWidget(),
                            ],
                          ),
                          20.isHeight,
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
