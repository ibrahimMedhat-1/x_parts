import 'package:x_parts/src/core/helper/cache_helper/cache_helper.dart';

abstract class AppConstants {
  static String get token => CacheHelper.getData(key: CacheKeys.token)??'';
  static bool get isRememberMe => CacheHelper.getData(key: CacheKeys.isRememberMe)??false;
}
