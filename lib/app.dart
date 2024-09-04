import 'package:easy_localization/easy_localization.dart';


import 'src/core/utils/app_imports.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      builder: (context, child) => MaterialApp(
        title: 'XParts',
        debugShowCheckedModeBanner: false,
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        onGenerateRoute: AppRouter.onGenerate,
        initialRoute: AppConstants.token.isNotEmpty && AppConstants.isRememberMe
            ? Routes.layoutScreen
            : Routes.loginScreen,
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.black,
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.black,
            surfaceTintColor: Colors.black,
            titleTextStyle: TextStyle(color: Colors.white),
            iconTheme: IconThemeData(color: Colors.white),
          ),
          dialogBackgroundColor: Colors.white,
          colorScheme: ColorScheme.fromSeed(seedColor: AppColors.mainPinkColor),
          useMaterial3: true,
        ),
      ),
    );
  }
}
