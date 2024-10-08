import 'package:x_parts/src/core/utils/app_imports.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarDefault(title: ''),
      body: Stack(
        children: [
          Assets.svgs.homepage.drawerBackground.image(fit: BoxFit.fill, width: 390.w),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Spacer(),
              TextButton(
                  onPressed: () {
                    getIt<LayoutCubit>().changeLayoutBody(0);
                    context.pop();
                  },
                  child: Text('Home', style: TextStyles.font40WhiteMedium)),
              TextButton(
                  onPressed: () {
                    getIt<LayoutCubit>().changeLayoutBody(3);
                    context.pop();
                  },
                  child: Text('Profile', style: TextStyles.font40WhiteMedium)),
              TextButton(
                  onPressed: () {
                    getIt<LayoutCubit>().changeLayoutBody(2);
                    context.pop();
                  },
                  child: Text('Wishlist', style: TextStyles.font40WhiteMedium)),
              TextButton(
                  onPressed: ()=>context.pushReplacementNamed(Routes.cartScreen),
                  child: Text('Cart', style: TextStyles.font40WhiteMedium)),
              TextButton(
                  onPressed: () => context.pushNamedAndRemoveUntil(
                        Routes.loginScreen,
                        predicate: (route) => false,
                      ),
                  child: Text('Logout', style: TextStyles.font40WhiteMedium)),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Developed by ', style: TextStyles.font10GreyRegular),
                  Text('Anonymous ', style: TextStyles.font10GreyRegular.copyWith(color: Colors.white)),
                  Text('for ', style: TextStyles.font10GreyRegular),
                  Text('Iconic. ', style: TextStyles.font10GreyRegular.copyWith(color: Colors.white)),
                  Text('All rights reserved. ', style: TextStyles.font10GreyRegular),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
