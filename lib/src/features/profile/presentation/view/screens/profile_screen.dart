import 'package:x_parts/src/core/utils/app_imports.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarDefault(
        title: 'My Profile',
        showLeading: false,
      ),
      body: Stack(
        children: [
          Assets.auth.signupBackground.svg(fit: BoxFit.fill, width: 390.w),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
            child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(radius: 54.r),
                    20.isWidth,
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Maro itsh', style: TextStyles.font24WhiteMedium),
                        Text('maro@gmail.com', style: TextStyles.font12WhiteRegular),
                      ],
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: ButtonWidget(
                    onTap: () => context.pushNamed(Routes.editProfileScreen),
                    text: 'Edit Profile',
                    topRightRadius: 0,
                  ),
                ),
                30.isHeight,
                const ProfileDataField(
                  label: 'STAFF ID',
                  data: 'EE 54358504',
                ),
                20.isHeight,
                const ProfileDataField(
                  label: 'SSNIT NUMBER',
                  data: '4537740-003-4',
                ),
                20.isHeight,
                const ProfileDataField(
                  label: 'PHONE',
                  data: '465786989568-003-4',
                ),
                20.isHeight,
                const ProfileDataField(
                  label: 'ID Number',
                  data: '465786989568',
                ),
                30.isHeight,
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Container(
                            height: 72.h,
                            width: 164.w,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.r),
                            ),
                            child: Assets.images.idImage.image(),
                          ),
                          15.isHeight,
                          Text(
                            ' your Id’s front side',
                            style: TextStyles.font10WhitBold,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Container(
                            height: 72.h,
                            width: 164.w,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.r),
                            ),
                            child: Assets.images.idImage.image(),
                          ),
                          15.isHeight,
                          Text(
                            ' your Id’s Back side',
                            style: TextStyles.font10WhitBold,
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ProfileDataField extends StatelessWidget {
  const ProfileDataField({
    super.key,
    required this.label,
    required this.data,
  });

  final String label;

  final String data;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(30.r),
        boxShadow: const [
          BoxShadow(blurRadius: 1, spreadRadius: 0, color: AppColors.mainPinkColor, offset: Offset(0, 1))
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: TextStyles.font18WhiteMedium),
          Text(data, style: TextStyles.font10WhitBold),
        ],
      ),
    );
  }
}
