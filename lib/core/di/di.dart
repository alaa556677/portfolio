import 'package:my_reference/my_reference.dart';
import 'package:portfolio/core/helpers/cacheHelper.dart';

class ApiConstants{
  static const String siteUrl = 'https://mr7ba.com';
  static const String baseUrl = '$siteUrl/wp-json/bookydo-mobile/v1';
}
////////////////////////////////////////////////////////////////////////////////
Future<void> setupGetIT() async {
  initialDioAndService();
  initialRepo();
  initialUsecase();
  initialCubit();
}

////////////////////////////////////////////////////////////////////////////// services
void initialDioAndService(){
  DioWordpress.init(DioWordpressModel(
    baseUrl: ApiConstants.baseUrl,
     token: CacheHelperConstants.token.toString(),
     isLogged: CacheHelperConstants.isLogged.toString(),
  ));
  Dio dio = DioWordpress.dio;
  // getIt.registerLazySingleton<HomeService>(() => HomeService(dio));
}

////////////////////////////////////////////////////////////////////////////// cubit 
void initialCubit(){
  getIt.registerFactory(() => AppLocaleCubit());
}

/////////////////////////////////////////////////////////////////////////////// repo
void initialRepo(){
  // getIt.registerLazySingleton<HomeRepo>(() => HomeRepo(getIt()));
}

/////////////////////////////////////////////////////////////////////////////// usecase
void initialUsecase(){
  // getIt.registerFactory(() => GetCategoriesUsecase(getIt()));
}
