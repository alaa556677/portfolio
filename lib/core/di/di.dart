import 'package:my_reference/my_reference.dart';
import 'package:portfolio/core/helpers/cache_helper.dart';
import 'package:portfolio/features/about/data/repo/about_repo.dart';
import 'package:portfolio/features/about/logic/about_cubit.dart';
import 'package:portfolio/features/contact_me/data/repo/contact_repo.dart';
import 'package:portfolio/features/contact_me/logic/contact_cubit.dart';
import 'package:portfolio/features/experiense/data/repo/experience_repo.dart';
import 'package:portfolio/features/experiense/logic/experience_cubit.dart';
import 'package:portfolio/features/home_screen/logic/home_cubit.dart';
import 'package:portfolio/features/projects/data/repo/projects_repo.dart';
import 'package:portfolio/features/projects/logic/projects_cubit.dart';
import 'package:portfolio/features/sidebar/data/repo/sidebar_repo.dart';
import 'package:portfolio/features/sidebar/logic/sidebar_cubit.dart';

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
  getIt.registerFactory(() => AppLocaleCubit("en"));
  getIt.registerFactory(() => AboutCubit(getIt()));
  getIt.registerLazySingleton(() => ContactCubit(getIt()));
  getIt.registerFactory(() => ExperienceCubit(getIt()));
  getIt.registerLazySingleton(() => HomeCubit());
  getIt.registerFactory(() => ProjectsCubit(getIt()));
  getIt.registerFactory(() => SidebarCubit(getIt()));
}

/////////////////////////////////////////////////////////////////////////////// repo
void initialRepo(){
  // getIt.registerLazySingleton<HomeRepo>(() => HomeRepo(getIt()));
  getIt.registerLazySingleton<AboutRepo>(() => AboutRepo());
  getIt.registerLazySingleton<ContactRepo>(() => ContactRepo());
  getIt.registerLazySingleton<ExperienceRepo>(() => ExperienceRepo());
  getIt.registerLazySingleton<ProjectsRepo>(() => ProjectsRepo());
  getIt.registerLazySingleton<SidebarRepo>(() => SidebarRepo());
}

/////////////////////////////////////////////////////////////////////////////// usecase
void initialUsecase(){
  // getIt.registerFactory(() => GetCategoriesUsecase(getIt()));
}
