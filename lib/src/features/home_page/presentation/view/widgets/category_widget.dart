import 'package:x_parts/src/core/utils/app_imports.dart';

class CategoryWidget extends StatefulWidget {
  final String brandLogo;
  final String label;
  final VoidCallback onTap;
  final bool canOpen;

  const CategoryWidget({
    required this.brandLogo,
    required this.label,
    required this.onTap,
    this.canOpen = false,
    super.key,
  });

  @override
  State<CategoryWidget> createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation animationWidth;
  late Animation animationHeight;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(vsync: this, duration: const Duration(seconds: 1));
    animationHeight = Tween<double>(begin: 50.w, end: 50.w).animate(animationController);
    animationWidth = Tween<double>(begin: 50.w, end: 150.w).animate(animationController);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: InkWell(
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
        onTap: () {
          if (widget.canOpen) {
            animationController.forward().asStream().listen((onData) {
              setState(() {});
            });
          }
          widget.onTap();
        },
        child: Column(
          children: [
            CachedNetworkImage(
              fit: BoxFit.fill,
              imageUrl: widget.brandLogo,
              imageBuilder: (context, imageProvider) => Container(
                height: 50.h,
                width: 50.w,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: imageProvider,
                      fit: BoxFit.fill,
                    )),
              ),
              progressIndicatorBuilder: (context, url, progress) => Shimmer.fromColors(
                  baseColor: Colors.grey.shade300,
                  highlightColor: Colors.grey.shade300,
                  child: CircleAvatar(
                    radius: 40.sp,
                  )),
              errorWidget: (context, url, error) => widget.canOpen
                  ? AnimatedContainer(
                      duration: const Duration(seconds: 1),
                      height: animationHeight.value,
                      width: animationWidth.value,
                      decoration:
                          BoxDecoration(borderRadius: BorderRadius.circular(20.r), color: AppColors.mainDarkColor),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            height: 50.h,
                            width: 50.w,
                            decoration: BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                            child: Image.asset(
                              widget.brandLogo,
                              scale: 5,
                            ),
                          ),
                          Expanded(child: Text(widget.label, style: TextStyles.font12WhiteRegular,overflow: TextOverflow.ellipsis,))
                        ],
                      ),
                    )
                  : Container(
                      height: 50.h,
                      width: 50.w,
                      decoration: BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                      child: Image.asset(
                        widget.brandLogo,
                        scale: 5,
                      ),
                    ),
            ),
            if (!widget.canOpen) Text(widget.label, style: TextStyles.font12WhiteRegular)
          ],
        ),
      ),
    );
  }
}
