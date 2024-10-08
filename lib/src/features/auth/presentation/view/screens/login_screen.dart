import 'package:easy_localization/easy_localization.dart';

import 'package:x_parts/src/core/utils/app_imports.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        bottom: false,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(),
              SizedBox(width: 311.w, height: 297.h, child: Center(child: Assets.auth.loginLogo.image())),
              SizedBox(
                width: 390.w,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    SizedBox(
                      width: double.infinity,
                        height: MediaQuery.sizeOf(context).height-297.h,
                        child: Assets.auth.loginBackgroundImage.svg(fit: BoxFit.fill)),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40.w),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          59.isHeight,
                          Center(
                            child: Text(
                              LocaleKeys.LOGIN.tr(),
                              style: TextStyles.font24WhiteMedium,
                            ),
                          ),
                          59.isHeight,
                          TextFormFieldCustomized(
                            height: 78.h,
                            width: 289.w,
                            topRightRadius: 0,
                            label: 'Email',
                            labelDesc: 'email@example.com',
                            enabled: true,
                            obscureText: false,
                            keyboardType: TextInputType.emailAddress,
                          ),
                          10.isHeight,
                          TextFormFieldCustomized(
                            width: 289.w,
                            topRightRadius: 0,
                            label: 'Password',
                            labelDesc: '********',
                            enabled: true,
                            obscureText: true,
                            maxLines: 1,
                            keyboardType: TextInputType.emailAddress,
                          ),
                          20.isHeight,
                          Align(
                            alignment: AlignmentDirectional.centerStart,
                            child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(30, 0, 0, 0),
                                child: InkWell(
                                    onTap: () =>
                                        context.pushNamed(Routes.forgetPasswordEmailRecoveryScreen),
                                    child: Text('Forgot password ?',
                                        style: TextStyles.font12WhiteRegular))),
                          ),
                          42.isHeight,
                          ButtonWidget(
                            onTap: () => context.pushNamedAndRemoveUntil(
                              Routes.layoutScreen,
                              predicate: (route) => false,
                            ),
                            text: 'Login',
                            height: 57.h,
                            minWidth: 289.w,
                            topRightRadius: 0,
                          ),
                          10.isHeight,
                          TextButton(
                              onPressed: () => context.pushNamed(Routes.signupScreen),
                              child: Text(
                                'Don’t have any account? Sign Up',
                                style: TextStyles.font12WhiteRegular.copyWith(color: Colors.grey),
                              ))
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
