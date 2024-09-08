import 'package:x_parts/src/core/utils/app_imports.dart';

class AppBarDefault extends PreferredSize {
  final String title;
  final VoidCallback? onBack;
  final List<Widget>? actions;
  final Color? backgroundColor;
  final Widget? leading;
  final bool showLeading;

  const AppBarDefault({
    super.key,
    required this.title,
    this.backgroundColor,
    this.showLeading = true,
    this.onBack,
    this.actions,
    this.leading,
    super.preferredSize = const Size.fromHeight(56),
    super.child = const SizedBox(),
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor ?? Colors.black,
      iconTheme: const IconThemeData(color: Colors.white),
      centerTitle: true,
      actions: actions,
      leadingWidth: 47.w,
      leading: showLeading?(leading ?? const CircularButtonCustomized()):null,
      title: Text(
        title,
        style: TextStyles.font24WhiteMedium,
      ),
      // bottom: PreferredSize(
      //   preferredSize: Size.zero,
      //   child: Divider(color: Colors.grey.shade300),
      // ),
    );
  }
}
