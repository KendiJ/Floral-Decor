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
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          AppStrings.flowering, 
          style: AppTextStyle.textSize20.copyWith(color: AppColors.primaryColor),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.yellow,
              height: 100,
              width: double.infinity,
              child: Text("My Plants"),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 200,
                  width: 300,
                  color: Colors.tealAccent,
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 200,
                  width: 300,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('assets/images/lady.jpg')),
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    )
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 200,
                  width: 300,
                  color: Colors.tealAccent,
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 200,
                  width: 300,
                  color: Colors.tealAccent,
                ),
              ],
            ),
          ],
        ),
      )
      
    );
  }
}