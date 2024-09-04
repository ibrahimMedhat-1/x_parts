import 'package:x_parts/src/core/utils/app_imports.dart';

abstract class AppRouter {
  static Route onGenerate(RouteSettings settings) {
    switch (settings.name) {
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (context) => const LoginScreen());
      case Routes.signupScreen:
        return MaterialPageRoute(builder: (context) => const SignupScreen());
      default:
        return MaterialPageRoute(
            builder: (context) => Center(child: Text('No Screen called: ${settings.name}')));
    }
  }
}
