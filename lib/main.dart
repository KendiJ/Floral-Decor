import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:indoor_floral_plants/pages/home_page.dart';

import 'pages/screens/Cactus/cactus.dart';
import 'pages/screens/Flowering/flowering.dart';
import 'pages/screens/Foliage/foliage.dart';
import 'pages/screens/Hunging/hunging.dart';
import 'pages/screens/Palms/palm.dart';
import 'pages/screens/Succulents/succulents.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
    routes: {
      FloweringPlants.id: (context) => FloweringPlants(),
      SucculentPlants.id: (context) => SucculentPlants(),
      FoliagePlants.id: (context) => FoliagePlants(),
      CuctusPlants.id: (context) => CuctusPlants(),
      PalmnPlants.id: (context) => PalmnPlants(),
      HungingBasket.id: (context) => HungingBasket(),
    },
  )
);


