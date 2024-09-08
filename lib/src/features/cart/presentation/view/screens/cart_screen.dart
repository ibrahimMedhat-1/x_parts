import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:x_parts/src/core/utils/app_imports.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkGreyColor,
      appBar: const AppBarDefault(
        title: 'Cart',
        backgroundColor: AppColors.darkGreyColor,
        actions: [CircularButtonCustomized(icon: Icons.favorite_border)],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(10.sp),
              children: [
                const CartItemWidget(),
                10.isHeight,
                Slidable(
                  startActionPane: ActionPane(
                    motion:const BehindMotion(),
                    extentRatio: 0.3,
                    children: [
                      SlidableAction(
                        // borderRadius: BorderRadius.circular(50),
                        onPressed: (context) {},
                        backgroundColor: AppColors.mainDarkColor,
                        icon: Icons.delete_outline_outlined,
                        foregroundColor: Colors.red,
                        // label: 'Delete',
                      ),
                    ],
                  ),
                  child: const CartItemWidget(),
                ),
              ],
            ),
          ),
          BottomCheckOutWidget(
            onTap: () => context.pushNamed(Routes.paymentMethodScreen),
            isDark: true,
          ),
        ],
      ),
    );
  }
}
