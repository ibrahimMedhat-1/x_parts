import 'package:x_parts/src/core/utils/app_imports.dart';
import 'package:easy_localization/easy_localization.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  await CacheHelper.init();
  await setUpLocators();
  Bloc.observer = MyBlocObserver();
  runApp(
    EasyLocalization(
      assetLoader: const CodegenLoader(),
      startLocale: Locale(Platform.localeName.split('_').first),
      supportedLocales: const [
        Locale('en'),
        Locale('ar'),

      ],
      path: 'assets/i18n',
      useFallbackTranslations: true,
      fallbackLocale: const Locale('en'),
      saveLocale: true,
      child: const MyApp(),
    ),
  );
}
