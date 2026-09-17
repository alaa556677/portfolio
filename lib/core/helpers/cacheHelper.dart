import 'package:my_reference/my_reference.dart';

enum CacheHelperConstants {
  token,
  isLogged,
  selectedSort,
  selectedSortLabel,
  sliderMaxApi,
  sliderMinApi,
  minPriceFilter,
  maxPriceFilter,
  selectedCategorySlugs,
  selectedBrandSlugs,
  sessionId,
  defaultAddressId,
  firstName,
  lastName,
  email
}
///////////////////////////////////////////////////////////////////////////////////
class GetCacheHelper {
  static String? get token => CacheHelper.getData(key: CacheHelperConstants.token.toString());
  static String? get selectedSort => CacheHelper.getData(key: CacheHelperConstants.selectedSort.toString());
  static String? get selectedSortLabel => CacheHelper.getData(key: CacheHelperConstants.selectedSortLabel.toString());
  static bool? get isLogged => CacheHelper.getData(key: CacheHelperConstants.isLogged.toString());
  static double? get sliderMaxApi => CacheHelper.getData(key: CacheHelperConstants.sliderMaxApi.toString());
  static double? get sliderMinApi => CacheHelper.getData(key: CacheHelperConstants.sliderMinApi.toString());
  static double? get minPriceFilter => CacheHelper.getData(key: CacheHelperConstants.minPriceFilter.toString());
  static double? get maxPriceFilter => CacheHelper.getData(key: CacheHelperConstants.maxPriceFilter.toString());
  static List<String> get selectedCategorySlugs => CacheHelper.getStringList(CacheHelperConstants.selectedCategorySlugs.toString());
  static List<String> get selectedBrandSlugs => CacheHelper.getStringList(CacheHelperConstants.selectedBrandSlugs.toString());
  static String? get sessionId => CacheHelper.getData(key: CacheHelperConstants.sessionId.toString());
  static int? get defaultAddressId => CacheHelper.getData(key: CacheHelperConstants.defaultAddressId.toString());
  static String? get firstName => CacheHelper.getData(key: CacheHelperConstants.firstName.toString());
  static String? get lastName => CacheHelper.getData(key: CacheHelperConstants.lastName.toString());
  static String? get email => CacheHelper.getData(key: CacheHelperConstants.email.toString());
}
