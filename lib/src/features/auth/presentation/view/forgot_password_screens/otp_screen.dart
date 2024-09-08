import 'package:x_parts/src/core/utils/app_imports.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

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
                  Text('Check your phone', style: TextStyles.font24WhiteMedium),
                  Text(' we`ve sent the code to your phone', style: TextStyles.font10WhitBold),
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
                      OtpPinField(
                        onSubmit: (pin) {},
                        onChange: (pin) {},
                        autoFillEnable: true,
                        cursorColor: Colors.white,
                        highlightBorder: true,
                        otpPinFieldDecoration: OtpPinFieldDecoration.custom,
                        showCursor: true,
                        keyboardType: TextInputType.number,
                        otpPinFieldStyle: OtpPinFieldStyle(
                          fieldBorderWidth: 0.5,
                          fieldBorderRadius: 20.r,
                          defaultFieldBorderColor: AppColors.mainPinkColor,
                          activeFieldBorderColor: AppColors.mainPinkColor,
                          textStyle: const TextStyle(color: Colors.white),
                        ),
                      ),
                      30.isHeight,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Code Expire in: 3:25', style: TextStyles.font12WhiteRegular),
                          20.isWidth,
                          InkWell(
                              onTap: () {},
                              child: Text('Send again', style: TextStyles.font10GreyRegular)),
                        ],
                      ),
                      30.isHeight,
                      ButtonWidget(
                        onTap: () =>context.pushNamed(Routes.resetPasswordScreen),
                        height: 60.h,
                        minWidth: 290.w,
                        text: 'Verify',
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
