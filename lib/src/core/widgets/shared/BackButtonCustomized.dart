import 'package:x_parts/src/core/utils/app_imports.dart';

class CircularButtonCustomized extends StatelessWidget {
  const CircularButtonCustomized({
    super.key,
    this.buttonColor,
    this.icon,
  });
final Color? buttonColor;
final IconData? icon;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        color: buttonColor?? AppColors.mainDarkColor,
        textColor: Colors.white,
        shape: const CircleBorder(),
        padding: EdgeInsets.zero,
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        onPressed: () => context.pop(),
        child:   Icon(icon??Icons.arrow_back_ios_rounded));
  }
}
