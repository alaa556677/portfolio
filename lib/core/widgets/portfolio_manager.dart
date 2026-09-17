import 'package:flutter/material.dart';
import 'package:my_reference/my_reference.dart';
import 'package:portfolio/core/helpers/methods.dart';
import 'package:portfolio/core/widgets/colors.dart';

class PortfolioManager{
  ////////////////////////////////////////////////////////////////// appbar
  static Widget appbar(AppbarModel appbarModel){
    return UdyTechWidgets.appbar(appbarModel.copyWith(
      titleStyle: appbarModel.titleStyle ?? style(textType: TextTypes.titlePage20),
      leadingIconColor: appbarModel.leadingIconColor ?? AppColors.iconGrey
    ));
  }
  ////////////////////////////////////////////////////////////////// bottom navigation
  static Widget bottomNavigation(BottomNavigationModel bottomNavigationModel){
    return UdyTechWidgets.bottomNavigation(bottomNavigationModel.copyWith(
      backgroundColor: bottomNavigationModel.backgroundColor ?? AppColors.white
    ));
  }
  ////////////////////////////////////////////////////////////////// bottom navigation item
  static dynamic bottomNavigationItem(BottomItemModel bottomItemModel){
    return UdyTechWidgets.bottomNavigationItem(bottomItemModel.copyWith(
      selectedIconColor: bottomItemModel.selectedIconColor ?? AppColors.primary,
      unSelectedIconColor: bottomItemModel.unSelectedIconColor ?? AppColors.textHint,
      selectedTextStyle:  bottomItemModel.selectedTextStyle ?? style(textType: TextTypes.tabSelected14),
      unSelectedTextStyle: bottomItemModel.unSelectedTextStyle ?? style(textType: TextTypes.tabUnSelected14)
    ));
  }
  ////////////////////////////////////////////////////////////////// bottomsheet
  static showBottomsheet(BottomsheetModel bottomsheetModel){
    return UdyTechWidgets.showBottomsheet(bottomsheetModel.copyWith(
      background: bottomsheetModel.background ?? AppColors.white,
      lineColor: bottomsheetModel.lineColor ?? AppColors.backgroundCardGrey.withValues(alpha: .7)
    ));
  }
  ////////////////////////////////////////////////////////////////// Button
  static Widget button(ButtonModel buttonModel){
    return UdyTechWidgets.button(buttonModel.copyWith(
      buttonColor: buttonModel.buttonColor ?? AppColors.primary,
      style: buttonModel.style ?? style(textType: TextTypes.buttonTextLarge16),
      radius: buttonModel.radius ?? 12.r,
      height: buttonModel.height ?? 24.h,
      loadingModel: LoadingModel(
        circleColor: AppColors.primary
      )
    ));
  }
  ////////////////////////////////////////////////////////////////// country code
  static Widget countryCode(CountryPickerModel countryPickerModel){
    return UdyTechWidgets.countryCode(countryPickerModel.copyWith(
      textStyle: countryPickerModel.textStyle ?? style(textType: TextTypes.formContent14)
    ));
  }
  /////////////////////////////////////////////////////////////////// date picker
  static Widget datePicker({required TextFormModel textFormModel}){
    return UdyTechWidgets.datePicker(textFormModel: textFormModel);
  }
  ////////////////////////////////////////////////////////////////// drop down
  static Widget dropDown(DropDownModel dropDownModel){
    return UdyTechWidgets.dropDown(dropDownModel);
  }
  ////////////////////////////////////////////////////////////////// error widget
  static Widget errorWidget({
    String? errorMessage,
    void Function()? onTap
  }){
    return UdyTechWidgets.errorWidget(CustomErrorModel(
      errorMessage: errorMessage,
      onTap: onTap,
      buttonModel: ButtonModel(
        text: "إعادة المحاولة",
        buttonColor: AppColors.primary,
        style: style(textType: TextTypes.buttonTextMedium14)
      )
    ));
  }
  /////////////////////////////////////////////////////////////////// gesture
  static Widget gestureButton({
    required Widget child,
    required void Function() onTap
  }){
    return UdyTechWidgets.gestureButton(child: child, onTap: onTap);
  }
  ////////////////////////////////////////////////////////////////// section 
  static Widget grid(GridModel gridModel){
    return UdyTechWidgets.grid(gridModel.copyWith(
      textButtonStyle: gridModel.textButtonStyle ?? style(textType: TextTypes.textButton14),
      titleStyle: gridModel.titleStyle ?? style(textType: TextTypes.titleSection18)
    ));
  }
  ////////////////////////////////////////////////////////////////// image network
  static Widget imageNetwork(ImageNetworkModel imageNetworkModel){
    return UdyTechWidgets.imageNetwork(imageNetworkModel.copyWith(
      iconErrorBackgroundColor: imageNetworkModel.iconErrorBackgroundColor ?? AppColors.grey
    ));
  }
  ////////////////////////////////////////////////////////////////// input label
  static Widget inputLabel(InputLabelModel inputLabelModel){
    return UdyTechWidgets.inputLabel(inputLabelModel.copyWith(
      titleStyle: inputLabelModel.titleStyle ?? style(textType: TextTypes.titleSection18)
    ));
  }
  ////////////////////////////////////////////////////////////////// loading circle
  static Widget loadingWidget({LoadingModel? loadingModel}){
    return UdyTechWidgets.loadingWidget(loadingModel?.copyWith(
      circleColor: AppColors.primary,
      linearColor: AppColors.primary,
    ));
  }
  ////////////////////////////////////////////////////////////////// set location
  static Widget setLocation(LocationModel locationModel){
    return UdyTechWidgets.getLoaction(locationModel);
  }
  ////////////////////////////////////////////////////////////////// main
  static Widget mainWidget(MainModel mainModel){
    return UdyTechWidgets.mainWidget(mainModel);
  }
  ////////////////////////////////////////////////////////////////// no data 
  static Widget noData({CustomNoDataModel? customNoDataContent}){
    return UdyTechWidgets.noData(customNoDataContent?.copyWith(
      style: customNoDataContent.style ?? style(textType: TextTypes.noDataTitle16).copyWith(color: AppColors.textSecondary, fontWeight: FontWeight.w700),
      styleSubText: customNoDataContent.styleSubText ?? style(textType: TextTypes.bodyMedium14).copyWith(color: AppColors.textHint),
    ));
  }
  ////////////////////////////////////////////////////////////////// slider
  static Widget onboarding(OnboardingModel onboardingModel){
    return UdyTechWidgets.onboarding(onboardingModel.copyWith(
      buttonModel: ButtonModel(
        buttonColor: onboardingModel.buttonModel?.buttonColor ?? AppColors.primary,
        style: onboardingModel.buttonModel?.style ?? style(textType: TextTypes.buttonTextLarge16),
        radius: onboardingModel.buttonModel?.radius ?? 12.r,
        height: onboardingModel.buttonModel?.height ?? 56.h
      )
    ));
  }
  ////////////////////////////////////////////////////////////////// padding
  static Widget padding({required Widget child, double? horizontal}){
    return UdyTechWidgets.padding(horizontal: horizontal ?? 20.w, child: child);
  }
  ////////////////////////////////////////////////////////////////// pagination
  static Widget pagination<C extends StateStreamable<S>, S>(PaginationModel<C, S> paginationModel){
    return UdyTechWidgets.pagination<C, S>(paginationModel);
  }
  //////////////////////////////////////////////////////////////////// pop up
  static Widget popUp(PopUpModel popUpModel){
    return UdyTechWidgets.popUp(popUpModel);
  }
  static PopupMenuItem popUpItem(PopUpItemModel popUpItemModel){
    return UdyTechWidgets.popUpItem(popUpItemModel);
  }
  /////////////////////////////////////////////////////////////////// refreshPage
  static Widget refreshPage({
    required Widget child,
    required Future<void> Function() onRefresh
  }){
    return UdyTechWidgets.refreshPage(child: child, onRefresh: onRefresh);
  }
  ////////////////////////////////////////////////////////////////// required 
  static Widget requiredField({String? errorMessage, required bool hasError}){
    return UdyTechWidgets.requiredField(errorMessage: errorMessage, hasError: hasError, style: style(textType: TextTypes.formRequired12));
  }
  ////////////////////////////////////////////////////////////////// scaffold 
  static Widget scaffold(ScaffoldModel scaffoldModel){
    return UdyTechWidgets.scaffold(scaffoldModel.copyWith(
      scaffoldBackground: scaffoldModel.scaffoldBackground ?? AppColors.scaffoldBackground,
    ));
  }
  ////////////////////////////////////////////////////////////////// show toast 
  static void toast(ToastModel toastModel){
    return UdyTechWidgets.toast(toastModel.copyWith(
      backgroundErrorColor: toastModel.backgroundErrorColor ?? AppColors.error,
      iconErrorColor: toastModel.iconErrorColor ?? AppColors.white,
      backgroundSuccessColor: toastModel.backgroundSuccessColor ?? AppColors.primary,
      iconSuccessColor: toastModel.iconSuccessColor ?? AppColors.white,
      style: toastModel.style ?? style(textType: TextTypes.status14)
    ));
  }
  ////////////////////////////////////////////////////////////////// slider
  static Widget slider(SliderModel sliderModel){
    return UdyTechWidgets.slider(sliderModel.copyWith(
      cardHintStyle: sliderModel.cardHintStyle ?? style(textType: TextTypes.badge12)
    ));
  }
  ////////////////////////////////////////////////////////////////// vertical space
  static Widget verticalSpace(double height){
    return UdyTechWidgets.verticalSpace(height);
  }
  ////////////////////////////////////////////////////////////////// horizontal space
  static Widget horizontalSpace(double width){
    return UdyTechWidgets.horizontalSpace(width);
  }
  /////////////////////////////////////////////////////////////////// splash
  static Widget splash(SplashModel splashModel){
    return UdyTechWidgets.splash(splashModel);
  }
  /////////////////////////////////////////////////////////////////// svg
  static Widget svgPicture(SvgModel svgModel){
    return UdyTechWidgets.svgWidget(svgModel: svgModel);
  }
  ////////////////////////////////////////////////////////////////// text
  static Widget text(TextModel textContent){
    return UdyTechWidgets.text(textContent.copyWith(
      overflow: textContent.overflow ?? TextOverflow.ellipsis
    ));
  }
  ////////////////////////////////////////////////////////////////// text button
  static Widget textButton(TextButtonModel textButtonModel){
    return UdyTechWidgets.textButton(textButtonModel);
  }
  ////////////////////////////////////////////////////////////////// text form 
  static Widget textForm(TextFormModel textFormModel){
    return UdyTechWidgets.textForm(textFormModel.copyWith(
      style: textFormModel.style ?? style(textType: TextTypes.formContent14),
      suffixIconColor: textFormModel.suffixIconColor ?? AppColors.grey,
      suffixIconErrorColor: textFormModel.suffixIconErrorColor ?? AppColors.error,
      prefixIconColor: textFormModel.prefixIconColor ?? AppColors.grey,
      prefixIconErrorColor: textFormModel.prefixIconErrorColor ?? AppColors.error,
      borderErrorColor: textFormModel.borderErrorColor ?? AppColors.error,
      hintStyle: textFormModel.hintStyle ?? style(textType: TextTypes.formHint14),
      filledColor: textFormModel.filledColor ?? AppColors.white,
      hintText: textFormModel.hintText ?? tr.portfolie,
    ));
  }
  ////////////////////////////////////////////////////////////////// screen width
  static double screenWidth(BuildContext context){
    return UdyTechMethods.screenWidth(context);
  }
  ////////////////////////////////////////////////////////////////// screen height
  static double screenHeight(BuildContext context){
    return UdyTechMethods.screenHeight(context);
  }
  //////////////////////////////////////////////////////////////////// open location
  static Future<void> openLocation(String locationUrl){
    return UdyTechMethods.openLocation(locationUrl);
  }
  ////////////////////////////////////////////////////////////////////////////
  static TextStyle style({
    required TextTypes textType,
    double? height,
  }){
    return UdyTechTextStyle.udyStyle(
      textType: textType,
      color: mar7baColors(textType),
      height: height
    );
  }
}
//////////////////////////////////////////////////////////////////////////////
Color mar7baColors(TextTypes textType){
   switch (textType) {
    case TextTypes.titlePage20:
    case TextTypes.itemNewPriceLarge20:
    case TextTypes.itemNewPriceSmall14:
    case TextTypes.tabSelected14:
    case TextTypes.textButton14:
    case TextTypes.itemBrandLarge14:
      return AppColors.primary;

    case TextTypes.splashTitle28:
    case TextTypes.titleBottomSheet20:
    case TextTypes.onboardingTitle26:
    case TextTypes.itemNameLarge18:
    case TextTypes.titleSection18:
    case TextTypes.itemNameSmall14:
    case TextTypes.onboardingContent16:
    case TextTypes.itemBrandSmall12:
    case TextTypes.bodyLarge18:
    case TextTypes.titleSummary16:
    case TextTypes.rateText32:
      return AppColors.textPrimary;

    case TextTypes.buttonTextLarge16:
    case TextTypes.buttonTextSmall12:
    case TextTypes.cardTitle20:
    case TextTypes.badge12:
    case TextTypes.status14:
    case TextTypes.splashContent16:
    case TextTypes.buttonTextMedium14:
      return AppColors.white;

    case TextTypes.itemOldPriceLarge14:
    case TextTypes.itemOldPriceSmall12:
    case TextTypes.formHint14:
    case TextTypes.noDataTitle16:
    case TextTypes.networkFaildTitle16:
      return AppColors.textHint;
    
    case TextTypes.tabUnSelected14:
    case TextTypes.formContent14:
    case TextTypes.noDataContent20:
    case TextTypes.networkFaildContent14:
    case TextTypes.itemDescriptionLarge14:
    case TextTypes.itemDescriptionSmall12:
    case TextTypes.bodySmall12:
    case TextTypes.caption10:
    case TextTypes.bodyMedium14:
      return AppColors.textSecondary;

    case TextTypes.formRequired12:
      return AppColors.error;
  }
}