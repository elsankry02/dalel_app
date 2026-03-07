import '../../../../core/utils/constants/app_images.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class OnBoardindModel {
  final String image;
  final String title;
  final String subTitle;

  OnBoardindModel({
    required this.image,
    required this.title,
    required this.subTitle,
  });
}

List<OnBoardindModel> onboardingFunc(BuildContext context) {
  return [
    OnBoardindModel(
      image: AppImages.imagesOnBoarding1,
      title: context.tr("explore_history_slogan"),
      subTitle: context.tr("app_history_libraries"),
    ),
    OnBoardindModel(
      image: AppImages.imagesOnBoarding2,
      title: context.tr("from_every_place"),
      subTitle: context.tr("ancient_places_variety"),
    ),
    OnBoardindModel(
      image: AppImages.imagesOnBoarding3,
      title: context.tr("ai_user_experience"),
      subTitle: context.tr("ai_recommendations"),
    ),
  ];
}
