import 'package:x_parts/src/core/utils/app_imports.dart';

class HomeAppBarWidget extends StatelessWidget {
  const HomeAppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 40.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Assets.svgs.homepage.homePageLogo.image(scale: 5),
          InkWell(
            onTap: () => context.pushNamed(Routes.drawerScreen),
            child: Assets.svgs.homepage.drawerIcon.svg(),
          ),
        ],
      ),
    );
  }
}
