import 'package:x_parts/src/core/utils/app_imports.dart';

class ForgetPasswordEmailRecoveryScreen extends StatelessWidget {
  const ForgetPasswordEmailRecoveryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarDefault(title: ''),
      body: Column(
        children: [
          Expanded(
              child: Center(
                child: SingleChildScrollView(
                            physics: const NeverScrollableScrollPhysics(),
                            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Password recovery', style: TextStyles.font24WhiteMedium),
                  Text('Enter your email to recover your password', style: TextStyles.font10WhitBold),
                ],
                            ),
                          ),
              )),
          SizedBox(
            height: 374.h,
            child: Stack(
              children: [
                Assets.auth.signupBackground.svg(width: 390.w, fit: BoxFit.fill),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const TextFormFieldCustomized(
                        enabled: true,
                        obscureText: false,
                        keyboardType: TextInputType.emailAddress,
                        hintText: 'email@example.com',
                      ),
                      30.isHeight,
                      ButtonWidget(
                        onTap: () =>context.pushNamed(Routes.otpScreen),
                        height: 60.h,
                        minWidth: double.infinity,
                        text: 'Recover Password',
                        topRightRadius: 0,
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
