import 'package:flutter/material.dart';
import 'package:indoor_floral_plants/app/app_colors.dart';
import 'package:indoor_floral_plants/app/app_pics.dart';
import 'package:indoor_floral_plants/app/app_strings.dart';
import 'package:indoor_floral_plants/app/app_textStyle.dart';
import 'package:indoor_floral_plants/pages/screens/Cactus/cactus.dart';
import 'package:indoor_floral_plants/pages/screens/Flowering/flowering.dart';
import 'package:indoor_floral_plants/pages/screens/Foliage/foliage.dart';
import 'package:indoor_floral_plants/pages/screens/Hunging/hunging.dart';
import 'package:indoor_floral_plants/pages/screens/Palms/palm.dart';
import 'package:indoor_floral_plants/pages/screens/Succulents/succulents.dart';


class AppCard {
  static final flowering = Builder(
    builder: (context) {
      return GestureDetector(
        child: Card(
           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
           elevation: 10,
           child: Padding (
             padding: const EdgeInsets.all(25),
             child: Column(
               children: [
                 Container(
                   height: 100,
                   width: 100,
                   child: Image.asset(AppPics.flowering)
                  ),
                 Text(
                   AppStrings.flowering,
                   style: AppTextStyle.textSize15.copyWith(
                     color: AppColors.textColor
                   ),
                 )
               ],
             ),
            )
        ),
        onTap: () {
          Navigator.pushNamed(context, FloweringPlants.id);
        },
      );
    }
  );

  static final succulent = Builder(
    builder: (context) {
      return GestureDetector(
        child: Card(
           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
           elevation: 10,
           child: Padding (
             padding: const EdgeInsets.all(25),
             child: Column(
               children: [
                 Container(
                   height: 100,
                   width: 100,
                   child: Image.asset(AppPics.succulents)
                  ),
                 Text(
                   AppStrings.succulents,
                   style: AppTextStyle.textSize15.copyWith(
                     color: AppColors.textColor
                   ),
                 )
               ],
             ),
            )
        ),
        onTap: () {
          Navigator.pushNamed(context, SucculentPlants.id);
        },
      );
    }
  );

  static final foliage = Builder(
    builder: (context) {
      return GestureDetector(
        child: Card(
           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
           elevation: 10,
           child: Padding (
             padding: const EdgeInsets.all(25),
             child: Column(
               children: [
                 Container(
                   height: 100,
                   width: 100,
                   child: Image.asset(AppPics.foliage)
                  ),
                 Text(
                   AppStrings.foliage,
                   style: AppTextStyle.textSize15.copyWith(
                     color: AppColors.textColor
                   ),
                 )
               ],
             ),
            )
        ),
        onTap: () {
          Navigator.pushNamed(context, FoliagePlants.id);
        },
      );
    }
  );

  static final cactus = Builder(
    builder: (context) {
      return GestureDetector(
        child: Card(
           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
           elevation: 10,
           child: Padding (
             padding: const EdgeInsets.all(25),
             child: Column(
               children: [
                 Container(
                   height: 100,
                   width: 100,
                   child: Image.asset(AppPics.cactus)
                  ),
                 Text(
                   AppStrings.cactus,
                   style: AppTextStyle.textSize15.copyWith(
                     color: AppColors.textColor
                   ),
                 )
               ],
             ),
            )
        ),
        onTap: () {
          Navigator.pushNamed(context, CuctusPlants.id);
        },
      );
    }
  );

  static final indoors = Builder(
    builder: (context) {
      return GestureDetector(
        child: Card(
           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
           elevation: 10,
           child: Padding (
             padding: const EdgeInsets.all(25),
             child: Column(
               children: [
                 Container(
                   height: 100,
                   width: 100,
                   child: Image.asset(AppPics.indoors)
                  ),
                 Text(
                   AppStrings.indoors,
                   style: AppTextStyle.textSize15.copyWith(
                     color: AppColors.textColor
                   ),
                 )
               ],
             ),
            )
        ),
        onTap: () {
          Navigator.pushNamed(context, PalmnPlants.id);
        },
      );
    }
  );

  static final hunging = Builder(
    builder: (context) {
      return GestureDetector(
        child: Card(
           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
           elevation: 10,
           child: Padding (
             padding: const EdgeInsets.all(25),
             child: Column(
               children: [
                 Container(
                   height: 100,
                   width: 100,
                   child: Image.asset(AppPics.hunging)
                  ),
                 Text(
                   AppStrings.hunging,
                   style: AppTextStyle.textSize15.copyWith(
                     color: AppColors.textColor
                   ),
                 )
               ],
             ),
            )
        ),
        onTap: () {
          Navigator.pushNamed(context, HungingBasket.id);
        },
      );
    }
  );
}