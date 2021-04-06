import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:indoor_floral_plants/app/app_card.dart';

class HomePage extends StatefulWidget {
  static const id = 'home';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
        backgroundColor: Colors.teal,
        elevation: 10

      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                
                
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        AppCard.flowering,
                        AppCard.foliage,
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        AppCard.succulent,
                        AppCard.cactus
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        AppCard.indoors,
                        AppCard.hunging
                      ],
                    ),
                    
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}