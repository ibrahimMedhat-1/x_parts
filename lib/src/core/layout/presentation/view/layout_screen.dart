import 'package:x_parts/src/core/utils/app_imports.dart';

class LayoutScreen extends StatefulWidget {
  const LayoutScreen({super.key});

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  @override
  Widget build(BuildContext context) {
    final LayoutCubit layoutCubit = getIt<LayoutCubit>();
    return BlocProvider.value(
      value: layoutCubit,
      child: BlocConsumer<LayoutCubit, LayoutState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            body: layoutCubit.layoutScreens[layoutCubit.screenIndex],
            bottomNavigationBar: Container(
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                topRight: Radius.circular(20.r),
                topLeft: Radius.circular(20.r),
              )),
              child: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                backgroundColor: AppColors.darkGreyColor,
                showSelectedLabels: false,
                showUnselectedLabels: false,
                onTap: (index) {
                  layoutCubit.changeLayoutBody(index);
                },
                items: [
                  BottomNavigationBarItem(
                    label: '',
                    icon: Assets.svgs.bottomNavBarIcons.homeIcon.svg(
                        color: layoutCubit.screenIndex == 0 ? AppColors.mainPinkColor : Colors.white),
                  ),
                  BottomNavigationBarItem(
                    label: '',
                    icon: Assets.svgs.bottomNavBarIcons.categoriesIcon.svg(
                        color: layoutCubit.screenIndex == 1 ? AppColors.mainPinkColor : Colors.white),
                  ),
                  BottomNavigationBarItem(
                    label: '',
                    icon: Assets.svgs.bottomNavBarIcons.favouritesIcon.svg(
                        color: layoutCubit.screenIndex == 2 ? AppColors.mainPinkColor : Colors.white),
                  ),
                  BottomNavigationBarItem(
                    label: '',
                    icon: Assets.svgs.bottomNavBarIcons.profileIcon.svg(
                        color: layoutCubit.screenIndex == 3 ? AppColors.mainPinkColor : Colors.white),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
