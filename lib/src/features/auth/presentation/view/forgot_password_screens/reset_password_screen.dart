import 'package:x_parts/src/core/utils/app_imports.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

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
                  Text('Reset your Password', style: TextStyles.font24WhiteMedium),
                  Text('Please enter your new password ', style: TextStyles.font10WhitBold),
                ],
              ),
            ),
          )),
          SizedBox(
            height: 542.h,
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
                        topRightRadius: 0,
                        keyboardType: TextInputType.visiblePassword,
                        prefixIcon: Icon(Icons.lock_outline, color: Colors.white),
                        suffixIcon: Icon(Icons.visibility, color: Colors.white),
                        hintText: 'Enter your password',
                      ),
                      10.isHeight,
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Checkbox(
                              checkColor: Colors.black,
                              activeColor: AppColors.pinkColor,
                              value: true,
                              onChanged: (value) {}),
                          Text(
                            'Your password must Contain :\nAt least  8 Characters',
                            style: TextStyles.font12WhiteRegular,
                          )
                        ],
                      ),
                      10.isHeight,
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Checkbox(
                              checkColor: Colors.black,
                              activeColor: AppColors.pinkColor,
                              fillColor: const WidgetStatePropertyAll<Color>(Colors.white),

                              value: false,
                              onChanged: (value) {}),
                          Text(
                            'Contains a number',
                            style: TextStyles.font12WhiteRegular,
                          )
                        ],
                      ),
                      10.isHeight,
                      const TextFormFieldCustomized(
                        enabled: true,
                        obscureText: false,
                        keyboardType: TextInputType.visiblePassword,
                        prefixIcon: Icon(Icons.lock_outline, color: Colors.white),
                        suffixIcon: Icon(Icons.visibility, color: Colors.white),
                        hintText: 'Enter your password again',
                      ),
                      10.isHeight,
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Checkbox(
                              checkColor: Colors.black,
                              activeColor: AppColors.pinkColor,
                              value: true,
                              onChanged: (value) {}),
                          Text(
                            'Both password must e match',
                            style: TextStyles.font12WhiteRegular,
                          )
                        ],
                      ),
                      30.isHeight,
                      ButtonWidget(
                        onTap: () => context.pushNamed(Routes.otpScreen),
                        height: 60.h,
                        minWidth: double.infinity,
                        text: 'Done',
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
