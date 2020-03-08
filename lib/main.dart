import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:indoor_floral_plants/animations/FadeAnimation.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  )
);

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/background.png'),
                    fit: BoxFit.cover
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.bottomRight,
                        colors: [
                          Colors.black.withOpacity(.8),
                          Colors.black.withOpacity(.2),
                        ]
                    )
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    FadeAnimation(1, Text("Here to bring you the best indoor flowers for your home decor",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.yellowAccent,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),)),
                    SizedBox(height: 30,),
//                    FadeAnimation(1.3, Container(
//                      padding: EdgeInsets.symmetric(vertical: 3),
//                      margin: EdgeInsets.symmetric(horizontal: 40),
//                      height: 50,
//                      decoration: BoxDecoration(
//                        borderRadius: BorderRadius.circular(50),
//                        color: Colors.white,
//                      ),
//                      child: TextField(
//                        decoration: InputDecoration(
//                            border: InputBorder.none,
//                            prefixIcon: Icon(Icons.search, color: Colors.blue,),
//                            hintStyle: TextStyle(
//                                color: Colors.grey, fontSize: 15),
//                            hintText: "Search for Flowers..."
//                        ),
//                      ),
//                    )),
                    SizedBox(height: 30,)
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  FadeAnimation(1, Text("Flowering Plants", style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.yellowAccent,
                      fontSize: 20),)),
                  SizedBox(height: 20,),
                  FadeAnimation(1.4, Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        makeItem(
                            image: 'assets/images/madagascarJ.jpg', title: 'Madagascar JAsmine'),
                        makeItem(
                            image: 'assets/images/ornamentalP.jpg', title: 'Ornamenta Pepper'),
                        makeItem(
                            image: 'assets/images/flamingK.jpg', title: 'Flaming Katy'),
                        makeItem(image: 'assets/images/mothO.jpeg',
                            title: 'Moth Orchid')
                      ],
                    ),
                  )),

                  Divider(
                    color: Colors.black,
                  ),

                  SizedBox(height: 20,),
                  FadeAnimation(1, Text("Succulent Plant", style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.yellowAccent,
                      fontSize: 20),)),
                  SizedBox(height: 20,),
                  FadeAnimation(1.4, Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        makeItem(image: 'assets/images/snake.jpg',
                            title: 'Snake Plant'),
                        makeItem(
                            image: 'assets/images/aloe.jpg', title: 'Aloe Vera'),
                        makeItem(
                            image: 'assets/images/mother.jpg', title: 'Mother of Thousands'),
                        makeItem(image: 'assets/images/panda.jpg',
                            title: 'Panda Plant')
                      ],
                    ),
                  )),

                  Divider(
                    color: Colors.black,
                  ),
                  SizedBox(height: 20,),
                  FadeAnimation(1, Text("Foliage Plants", style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.yellowAccent,
                      fontSize: 20),)),
                  SizedBox(height: 20,),
                  FadeAnimation(1.4, Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        makeItem(image: 'assets/images/swiss.jpg',
                            title: 'Swiss Cheese Plant'),
                        makeItem(
                            image: 'assets/images/velvet.jpg', title: ''
                            'Green Velvet'),
                        makeItem(
                            image: 'assets/images/watermelon.png', title: 'Watermelon Peperomia'),
                        makeItem(image: 'assets/images/heart.png',
                            title: 'Heart Leaf')
                      ],
                    ),
                  )),

                  Divider(
                    color: Colors.black,
                  ),
                  SizedBox(height: 20,),
                  FadeAnimation(1, Text("Cactus Plants", style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.yellowAccent,
                      fontSize: 20),)),
                  SizedBox(height: 20,),
                  FadeAnimation(1.4, Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        makeItem(image: 'assets/images/bunny.jpg',
                            title: 'Bunny Ears Plant'),
                        makeItem(
                            image: 'assets/images/easter.jpg', title: 'Easter Cactus'),
                        makeItem(
                            image: 'assets/images/golden.jpg', title: 'Golden Barrel Cactus'),
                        makeItem(image: 'assets/images/peruvian.jpg',
                            title: 'Peruvian Apple')
                      ],
                    ),
                  )),

                  Divider(
                    color: Colors.black,
                  ),
                  SizedBox(height: 20,),
                  FadeAnimation(1, Text("Indoor Palmm Plants", style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.yellowAccent,
                      fontSize: 20),)),
                  SizedBox(height: 20,),
                  FadeAnimation(1.4, Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        makeItem(image: 'assets/images/areca.jpg',
                            title: 'Areca Palm'),
                        makeItem(
                            image: 'assets/images/kentia.jpg', title: 'Kentia Palm'),
                        makeItem(
                            image: 'assets/images/lady.jpg', title: 'Lady Palm'),
                        makeItem(image: 'assets/images/parlor.jpg',
                            title: 'Palor Palm')
                      ],
                    ),
                  )),

                  Divider(
                    color: Colors.black,
                  ),
                  SizedBox(height: 20,),
                  FadeAnimation(1, Text("Hunging Basket Plants", style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.yellowAccent,
                      fontSize: 20),)),
                  SizedBox(height: 20,),
                  FadeAnimation(1.4, Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        makeItem(image: 'assets/images/boston.jpg',
                            title: 'Boston Fern'),
                        makeItem(
                            image: 'assets/images/rabbit.jpg', title: 'Rabbit Foot'),
                        makeItem(
                            image: 'assets/images/wondering.jpg', title: 'Wondering Jew'),
                        makeItem(image: 'assets/images/air.jpg',
                            title: 'Air Plant')
                      ],
                    ),
                  )),
                  SizedBox(height: 80,),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget makeItem({image, title}){
    return AspectRatio(
      aspectRatio: 1 / 1,
      child: Container(
        margin: EdgeInsets.only(right: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover
          )
        ),
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  colors: [
                    Colors.black.withOpacity(.8),
                    Colors.black.withOpacity(.3),
                  ]
             )
          ),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Text(title,style: TextStyle(color: Colors.white, fontSize: 18),),
          ),
        ),
      ),

    );
  }
}

