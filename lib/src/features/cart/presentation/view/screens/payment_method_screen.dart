import 'package:x_parts/src/core/utils/app_imports.dart';

class PaymentMethodScreen extends StatelessWidget {
  const PaymentMethodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarDefault(title: 'Payment Method'),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(20.sp),
            child: Row(
              children: [
                Expanded(child: Assets.images.paymentMethodCash.image()),
                20.isWidth,
                Expanded(child: Assets.images.paymentMethodVisa.image())
              ],
            ),
          ),
          const Spacer(),
            BottomCheckOutWidget(onTap: () =>context.pushNamed(Routes.shippingAddressScreen)),
        ],
      ),
    );
  }
}
