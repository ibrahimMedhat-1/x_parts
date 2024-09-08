import 'package:x_parts/src/core/utils/app_imports.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarDefault(title: 'My Profile'),
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.sizeOf(context).height -100.h,
          width: 390.w,
          child: Stack(
            children: [
              Assets.auth.signupBackground.svg(fit: BoxFit.fill, width: 393.w),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 59.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Row(),
                    CircleAvatar(radius: 54.r),
                    20.isHeight,
                    ButtonWidget(onTap: () {}, text: 'Edit',topRightRadius: 0),
                    20.isHeight,
                    TextFormFieldCustomized(
                      height: 78.h,
                      width: 289.w,
                      label: 'Full name',
                      enabled: true,
                      obscureText: false,
                      keyboardType: TextInputType.text,
                    ),
                    25.isHeight,
                    TextFormFieldCustomized(
                      width: 289.w,
                      label: 'Email',
                      enabled: true,
                      obscureText: true,
                      maxLines: 1,
                      keyboardType: TextInputType.emailAddress,
                    ),
                    25.isHeight,
                    TextFormFieldCustomized(
                      width: 289.w,
                      label: 'Phone Number',
                      enabled: true,
                      obscureText: true,
                      maxLines: 1,
                      keyboardType: TextInputType.phone,
                    ),
                    50.isHeight,
                    Row(
                      children: [
                        Expanded(
                          child: ButtonWidget(
                            onTap: () {},
                            text: 'Cancel',
                            topRightRadius: 0,
                            height: 57.h,
                            isHollow: true,
                          ),
                        ),
                        20.isWidth,
        
                        Expanded(
                          child: ButtonWidget(
                            onTap: () {},
                            text: 'Save',
                            topRightRadius: 0,
                            height: 57.h,
                          ),
                        ),
        
                      ],
                    ),
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
