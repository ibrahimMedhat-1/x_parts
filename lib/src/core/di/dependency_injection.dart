import 'package:x_parts/src/core/utils/app_imports.dart';

final getIt = GetIt.instance;

Future<void> setUpLocators() async {
  // api service
  getIt.registerSingleton(Dio());
  getIt.registerSingleton<ApiService>(ApiService(getIt.get<Dio>()));
  await dotenv.load();
  /// Layout Cubit
  getIt.registerLazySingleton(() => LayoutCubit());
  // login
  // getIt.registerFactory(() => LoginRepoImpl(getIt.get<ApiService>()));
  // getIt.registerLazySingleton(() => LoginCubit(getIt.get<LoginRepoImpl>()));
  // homepage
  // getIt.registerFactory(() => HomePageRepoImpl(getIt.get<ApiService>()));
}
