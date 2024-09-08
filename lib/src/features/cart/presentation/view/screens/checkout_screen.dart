import 'package:x_parts/src/core/utils/app_imports.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkGreyColor,
      appBar: const AppBarDefault(
        title: '',
        backgroundColor: AppColors.darkGreyColor,
        actions: [CircularButtonCustomized(icon: Icons.favorite_border)],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(10.sp),
              children: const [CartItemWidget()],
            ),
          ),
          BottomCheckOutWidget(onTap: () => context.pushNamed(Routes.paymentMethodScreen)),
        ],
      ),
    );
  }
}
