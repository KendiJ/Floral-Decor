import 'package:flutter/material.dart';
import 'package:indoor_floral_plants/app/app_colors.dart';
import 'package:indoor_floral_plants/app/app_strings.dart';
import 'package:indoor_floral_plants/app/app_textStyle.dart';

class FloweringPlants extends StatefulWidget {
  static const id = "flowering";
  @override
  _FloweringPlantsState createState() => _FloweringPlantsState();
}

class _FloweringPlantsState extends State<FloweringPlants> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text(
          AppStrings.flowering, 
          style: AppTextStyle.textSize20.copyWith(color: AppColors.primaryColor),
        ),
      ),
      body: Scaffold(
        
      ),
      
    );
  }
}