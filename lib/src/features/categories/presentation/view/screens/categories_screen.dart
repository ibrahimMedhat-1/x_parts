import 'package:x_parts/src/core/utils/app_imports.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkGreyColor,
      appBar: const AppBarDefault(
        title: 'All Products',
        backgroundColor: AppColors.darkGreyColor,
        showLeading: false,
      ),
      body: Container(
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
            color: AppColors.darkGreyColor,
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(40.r),
              bottomLeft: Radius.circular(40.r),
            ),
            boxShadow: [BoxShadow(color: Colors.white, blurRadius: 20)]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            40.isHeight,
            const HomeSearchFilterWidget(),
            40.isHeight,
            HomeRowWidget(children: [
              CategoryWidget(
                canOpen: true,
                brandLogo: Assets.test.accessories.path,
                label: 'Accessories',
                onTap: () {},
              ),
              CategoryWidget(
                canOpen: true,
                brandLogo: Assets.test.accessories.path,
                label: 'Accessories',
                onTap: () {},
              ),
              CategoryWidget(
                canOpen: true,
                brandLogo: Assets.test.accessories.path,
                label: 'Accessories',
                onTap: () {},
              ),
            ]),
            40.isHeight,
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                children: [
                  ProductWidget(largeView: true),
                  ProductWidget(largeView: true),
                  ProductWidget(largeView: true),
                  ProductWidget(largeView: true),
                  ProductWidget(largeView: true),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
