import 'package:x_parts/src/core/utils/app_imports.dart';

class ShippingAddressScreen extends StatelessWidget {
  const ShippingAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarDefault(title: 'Shipping Address', backgroundColor: AppColors.mainDarkColor),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 20.w),
            decoration: BoxDecoration(
                color: AppColors.mainDarkColor,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(46.r),
                  bottomLeft: Radius.circular(46.r),
                )),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    const Expanded(
                      child: TextFormFieldCustomized(
                        borderColor: AppColors.pinkColor,
                        enabled: true,
                        obscureText: false,
                        hintText: 'First Name',
                        keyboardType: TextInputType.name,
                      ),
                    ),
                    20.isWidth,
                    const Expanded(
                      child: TextFormFieldCustomized(
                        borderColor: AppColors.pinkColor,
                        enabled: true,
                        obscureText: false,
                        hintText: 'Last Name',
                        keyboardType: TextInputType.name,
                      ),
                    ),
                  ],
                ),
                20.isHeight,
                const TextFormFieldCustomized(
                  borderColor: AppColors.pinkColor,
                  enabled: true,
                  obscureText: false,
                  keyboardType: TextInputType.emailAddress,
                  hintText: 'Email',
                ),
                20.isHeight,
                const TextFormFieldCustomized(
                  borderColor: AppColors.pinkColor,
                  enabled: true,
                  obscureText: false,
                  keyboardType: TextInputType.phone,
                  hintText: 'Phone',
                ),
                20.isHeight,
                DropdownButtonFormField(
                  onChanged: (value) {},
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: AppColors.pinkColor),
                          borderRadius: BorderRadius.circular(25.r))),
                  hint: Text('City', style: TextStyles.font18WhiteMedium),
                  items: [],
                ),
                20.isHeight,
                const TextFormFieldCustomized(
                  borderColor: AppColors.pinkColor,
                  enabled: true,
                  obscureText: false,
                  keyboardType: TextInputType.text,
                  hintText: 'Adress',
                ),
                20.isHeight,
                const TextFormFieldCustomized(
                  borderColor: AppColors.pinkColor,
                  enabled: true,
                  obscureText: false,
                  keyboardType: TextInputType.number,
                  hintText: 'Postal Code',
                ),
                20.isHeight,
                Row(
                  children: [
                    Expanded(child: Assets.images.uploadIdFront.svg(height: 113.h)),
                    Expanded(child: Assets.images.uploadIdBack.svg(height: 113.h)),
                  ],
                ),
              ],
            ),
          ),
          const Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: ButtonWidget(
              onTap: () {},
              buttonColor: Colors.white,
              bottomLeftRadius: 0,
              minWidth: double.infinity,
              height: 60.h,
              textColor: Colors.black,
              text: 'Save',
            ),
          ),
          20.isHeight,
        ],
      ),
    );
  }
}
