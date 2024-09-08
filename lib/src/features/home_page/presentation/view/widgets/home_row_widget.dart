import 'package:x_parts/src/core/utils/app_imports.dart';
import 'package:x_parts/src/features/home_page/presentation/view/widgets/title_row.dart';

class HomeRowWidget extends StatefulWidget {
  final List<Widget> children;
  final VoidCallback? onTap;
  final bool autScrollList;
  final String? title;

  const HomeRowWidget({
    this.onTap,
    required this.children,
    this.autScrollList = false,
    this.title,
    super.key,
  });

  @override
  State<HomeRowWidget> createState() => _HomeRowWidgetState();
}

class _HomeRowWidgetState extends State<HomeRowWidget> {
  ScrollController scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (widget.autScrollList) {
        scrollController.animateTo(
          scrollController.position.maxScrollExtent,
          duration: Duration(seconds: widget.children.length),
          curve: Curves.linear,
        );
        scrollController.addListener(() {
          if (scrollController.position.pixels == scrollController.position.maxScrollExtent) {
            scrollController.animateTo(
              scrollController.position.minScrollExtent,
              duration: Duration(seconds: widget.children.length),
              curve: Curves.linear,
            );
          }
          if (scrollController.position.pixels == scrollController.position.minScrollExtent) {
            scrollController.animateTo(
              scrollController.position.maxScrollExtent,
              duration: const Duration(seconds: 3),
              curve: Curves.linear,
            );
          }
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.title != null)
          Column(
            children: [
              TitleRowWidget(
                title: widget.title!,
                onTap: widget.onTap,
              ),
        const SizedBox(height: 14),
            ],
          ),
        SingleChildScrollView(
          controller: scrollController,
          scrollDirection: Axis.horizontal,
          child: Row(
            children: widget.children,
          ),
        ),
      ],
    );
  }
}
