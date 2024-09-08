import 'package:x_parts/src/core/utils/app_imports.dart';

class HomeCarouselSliderStackWidget extends StatefulWidget {
  const HomeCarouselSliderStackWidget({
    super.key,
    required this.products,
    this.aspectRatio = 1,
    this.borderRadius = 20,
    this.viewportFraction = 1,
    this.onTap,
    this.isInHomePage = false,
  });

  final List<dynamic> products;
  final double aspectRatio;
  final double borderRadius;
  final double viewportFraction;
  final Function(int brandId)? onTap;
  final bool isInHomePage;

  @override
  State<HomeCarouselSliderStackWidget> createState() => _HomeCarouselSliderStackWidgetState();
}

class _HomeCarouselSliderStackWidgetState extends State<HomeCarouselSliderStackWidget> {
  int page = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        CarouselSlider(
          items: widget.products
              .map(
                (e) => Container(
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  child: Assets.test.backlightGif.image(
                    fit: BoxFit.fill,
                    width: double.infinity,
                  ),
                ),
              )
              .toList(),
          options: CarouselOptions(
            aspectRatio: 2.2 / 1,
            onPageChanged: (page, carouselChangeReason) {
              setState(() {
                this.page = page;
              });
            },
            initialPage: 0,
            enableInfiniteScroll: false,
            animateToClosest: true,
            autoPlay: true,
            autoPlayAnimationDuration: const Duration(seconds: 1),
            enlargeCenterPage: true,
            enlargeFactor: 1,
            reverse: false,
            viewportFraction: widget.viewportFraction,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 20.h),
          child: DotsIndicator(
            dotsCount: widget.products.isEmpty ? 1 : widget.products.length,
            position: page,
            decorator: const DotsDecorator(
                color: Colors.white,
                activeColor: Colors.transparent,
                activeShape: CircleBorder(side: BorderSide(color: AppColors.darkGreyColor))),
          ),
        ),
      ],
    );
  }
}
