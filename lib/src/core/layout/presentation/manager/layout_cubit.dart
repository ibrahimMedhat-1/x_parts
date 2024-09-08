import 'package:x_parts/src/core/utils/app_imports.dart';

part 'layout_state.dart';

class LayoutCubit extends Cubit<LayoutState> {
  LayoutCubit() : super(LayoutInitial());

  int screenIndex = 0;
  final List<Widget> layoutScreens = const [
    HomePageScreen(),
    CategoriesScreen(),
    FavouritesScreen(),
    ProfileScreen(),
  ];

  void changeLayoutBody(int screenIndex) {
    this.screenIndex = screenIndex;
    emit(ChangeLayoutBody());
  }
}
