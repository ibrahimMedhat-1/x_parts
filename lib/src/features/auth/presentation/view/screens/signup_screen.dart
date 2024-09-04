import 'package:easy_localization/easy_localization.dart';
import 'package:x_parts/src/core/utils/app_imports.dart';
import 'package:x_parts/src/core/widgets/shared/app_bar_default.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const AppBarDefault(title: 'Sign Up'),
              45.isHeight,
              SizedBox(
                height: 699.h,
                width: 390.w,
                child: Stack(
                  children: [
                    Assets.auth.signupBackground.svg(fit: BoxFit.fill, width: 393.w),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 59.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(),
                          TextFormFieldCustomized(
                            height: 78.h,
                            width: 289.w,
                            topRightRadius: 0,
                            label: 'First name',
                            labelDesc: 'Ibrahim',
                            enabled: true,
                            obscureText: false,
                            keyboardType: TextInputType.emailAddress,
                          ),
                          25.isHeight,
                          TextFormFieldCustomized(
                            width: 289.w,
                            topRightRadius: 0,
                            label: 'Last name',
                            labelDesc: 'Medhat',
                            enabled: true,
                            obscureText: true,
                            maxLines: 1,
                            keyboardType: TextInputType.emailAddress,
                          ),
                          25.isHeight,
                          TextFormFieldCustomized(
                            width: 289.w,
                            topRightRadius: 0,
                            label: 'Email',
                            labelDesc: 'email@example.com',
                            enabled: true,
                            obscureText: true,
                            maxLines: 1,
                            keyboardType: TextInputType.emailAddress,
                          ),
                          25.isHeight,
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
                          25.isHeight,
                          TextFormFieldCustomized(
                            width: 289.w,
                            topRightRadius: 0,
                            label: 'Confirm Password',
                            labelDesc: '********',
                            enabled: true,
                            obscureText: true,
                            maxLines: 1,
                            keyboardType: TextInputType.emailAddress,
                          ),
                          50.isHeight,
                          ButtonWidget(
                            onTap: () {},
                            text: 'Create',
                            height: 57.h,
                            minWidth: 289.w,
                          ),

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
