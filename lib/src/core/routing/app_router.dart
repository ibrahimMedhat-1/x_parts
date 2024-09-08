import 'package:x_parts/src/core/utils/app_imports.dart';

abstract class AppRouter {
  static Route onGenerate(RouteSettings settings) {
    switch (settings.name) {
      /// Auth
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (context) => const LoginScreen());
      case Routes.signupScreen:
        return MaterialPageRoute(builder: (context) => const SignupScreen());
        /// Forget Password
        case Routes.forgetPasswordEmailRecoveryScreen:
        return MaterialPageRoute(builder: (context) => const ForgetPasswordEmailRecoveryScreen());
        case Routes.otpScreen:
        return MaterialPageRoute(builder: (context) => const OtpScreen());
        case Routes.resetPasswordScreen:
        return MaterialPageRoute(builder: (context) => const ResetPasswordScreen());
        /// Home
      case Routes.layoutScreen:
        return MaterialPageRoute(builder: (context) => const LayoutScreen());
      case Routes.drawerScreen:
        return SizeTransition2(const DrawerScreen());

      /// Profile
      case Routes.editProfileScreen:
        return MaterialPageRoute(builder: (context) => const EditProfileScreen());

      /// Product Screens
      case Routes.productDetailsScreen:
        return MaterialPageRoute(builder: (context) => const ProductDetailsScreen());

      /// Cart Screens
      case Routes.cartScreen:
        return MaterialPageRoute(builder: (context) => const CartScreen());
      case Routes.checkoutScreen:
        return MaterialPageRoute(builder: (context) => const CheckoutScreen());
      case Routes.paymentMethodScreen:
        return MaterialPageRoute(builder: (context) => const PaymentMethodScreen());
      case Routes.shippingAddressScreen:
        return MaterialPageRoute(builder: (context) => const ShippingAddressScreen());
      default:
        return MaterialPageRoute(
            builder: (context) => Center(child: Text('No Screen called: ${settings.name}')));
    }
  }
}

class SizeTransition2 extends PageRouteBuilder {
  final Widget page;

  SizeTransition2(this.page)
      : super(
          pageBuilder: (context, animation, anotherAnimation) => page,
          transitionDuration: Duration(milliseconds: 1000),
          reverseTransitionDuration: Duration(milliseconds: 200),
          transitionsBuilder: (context, animation, anotherAnimation, child) {
            animation = CurvedAnimation(
                curve: Curves.fastLinearToSlowEaseIn,
                parent: animation,
                reverseCurve: Curves.fastOutSlowIn);
            return Align(
              alignment: Alignment.topCenter,
              child: SizeTransition(
                sizeFactor: animation,
                child: page,
                axisAlignment: 0,
              ),
            );
          },
        );
}
