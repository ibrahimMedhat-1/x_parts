import 'package:x_parts/src/core/utils/app_imports.dart';

class CarouselOfferWidget extends StatelessWidget {
  const CarouselOfferWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.sp),
      margin: EdgeInsets.all(7.sp),
      decoration: BoxDecoration(
        color: Colors.black,
        image: DecorationImage(
            image: Assets.test.sparePartImage.provider(), alignment: Alignment.centerRight),
        borderRadius: BorderRadius.circular(20.r),
        boxShadow: [
          BoxShadow(
            blurRadius: 6,
            offset: const Offset(1, 3),
            color: Colors.grey.shade800,
          ),
        ],
      ),
      child: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Get Special Discount', style: TextStyles.font18WhiteMedium),
            Text('40% only Today', style: TextStyles.font18WhiteMedium),
            Text(
              'Jorem ipsum dolor sit amet, consectetur adipiscing elit.velit'
              ' interdum.',
              style: TextStyles.font10GreyRegular,
            ),
            ButtonWidget(
              onTap: () {},
              text: 'Get Now',
              buttonColor: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
