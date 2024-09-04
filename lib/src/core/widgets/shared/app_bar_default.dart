import 'package:x_parts/src/core/utils/app_imports.dart';

class AppBarDefault extends PreferredSize {
  final String title;
  final VoidCallback? onBack;
  final List<Widget>? actions;

  const AppBarDefault({
    super.key,
    required this.title,
    this.onBack,
    this.actions,
    super.preferredSize = const Size.fromHeight(56),
    super.child = const SizedBox(),
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 14.w),

      child: AppBar(
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
        centerTitle: true,
        actions: actions,
        leadingWidth: 47.w,
        leading:
        MaterialButton(
            color: AppColors.darkGreyColor,
            textColor: Colors.white,
            shape: const CircleBorder(),
            padding: EdgeInsets.zero,
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            onPressed: () => context.pop(),
            child: const Icon(Icons.arrow_back_ios_rounded)),

        title: Text(
          title,
          style: TextStyles.font24WhiteMedium,
        ),
        // bottom: PreferredSize(
        //   preferredSize: Size.zero,
        //   child: Divider(color: Colors.grey.shade300),
        // ),
      ),
    );
  }
}
