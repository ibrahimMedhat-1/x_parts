import 'package:x_parts/src/core/utils/app_imports.dart';

class SubscribeBottomSheetBody extends StatelessWidget {
  const SubscribeBottomSheetBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: SizedBox(
        height: 602.h,
        width: 390.w,
        child: Stack(
          children: [
            Assets.svgs.homepage.subscribeBackground.svg(width: 390.w,fit: BoxFit.fill),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Row(),
                const Align(
                  alignment: Alignment.topLeft,
                  child: CloseButton(
                    style: ButtonStyle(
                      elevation: WidgetStatePropertyAll<double?>(33),
                      iconColor: WidgetStatePropertyAll<Color>(Colors.white),
                      backgroundColor: WidgetStatePropertyAll<Color>(AppColors.darkGreyColorWithOpacity),
                    ),
                  ),
                ),
                Text(
                  'SIGN UP FOR UPDATES!',
                  style: TextStyles.font24WhiteMedium.copyWith(color: Colors.black),
                ),
                Text(
                  'Join our email list to receive updates and exclusive offers directly in your inbox',
                  style: TextStyles.font18WhiteMedium,
                  textAlign: TextAlign.center,
                ),
                40.isHeight,
                TextFormFieldCustomized(
                  enabled: true,
                  obscureText: false,
                  keyboardType: TextInputType.emailAddress,
                  hintText: 'Email',
                  autoFocus: false,
                  topRightRadius: 0,
                  width: 290.w,
                  height: 60.h,
                ),
                40.isHeight,
                ButtonWidget(
                  onTap: () {},
                  text: 'Subscribe',
                  topRightRadius: 0,
                  textColor: Colors.white,
                  buttonColor: const Color(0xFFAD8F8C),
                ),
                20.isHeight,
                Text(
                  'Join our email list to receive updates and exclusive offers directly in your inbox',
                  style: TextStyles.font18WhiteMedium,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
