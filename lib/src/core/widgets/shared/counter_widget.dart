import 'package:x_parts/src/core/utils/app_imports.dart';

class CounterWidget extends StatefulWidget {
  const CounterWidget({
    super.key,
  });

  @override
  State<CounterWidget> createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int itemQuantity = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        MaterialButton(
            onPressed: () {
              setState(() {
                if (itemQuantity > 0) itemQuantity--;
              });
            },
            padding: EdgeInsets.zero,
            minWidth: 16.w,
            height: 16.h,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.r)),
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            color: Colors.white,
            child: Icon(
              Icons.remove,
              size: 15.sp,
            )),
        10.isWidth,
        Center(child: Text('$itemQuantity',style: TextStyles.font10WhitBold,)),
        10.isWidth,
        MaterialButton(
            onPressed: () {
              setState(() {
                itemQuantity++;
              });
            },
            color: AppColors.pinkColor,
            padding: EdgeInsets.zero,
            minWidth: 16.w,
            height: 16.h,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.r)),
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            child: Icon(
              Icons.add,
              size: 15.sp,
            )),
      ],
    );
  }
}
