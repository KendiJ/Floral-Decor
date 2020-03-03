import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
      body: Column(
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
                        Colors.black.withOpacity(.3 ),
                      ]
                  )
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text("Bringing the light of flowers right to your device!", textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.yellowAccent,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),),
                  SizedBox(height: 30,),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 3),
                    margin: EdgeInsets.symmetric(horizontal: 40),
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.search, color: Colors.blue,),
                          hintStyle: TextStyle(color: Colors.deepPurple, fontSize: 20),
                          hintText: "Serch for flowers..."
                      ),
                    ),
                  ),
                  SizedBox(height: 10,)
                ],
              ),
            ),
          ),
          SizedBox(height: 30,),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Flowering Plants", style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.greenAccent,
                    fontSize: 20),),
                SizedBox(height: 20,),
                Container(
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      makeItem(image: 'assets/images/flamingK.jpg', title: 'Flaming Katy'),
                      makeItem(image: 'assets/images/mothO.jpeg', title: 'Moth Ochid'),
                      makeItem(image: 'assets/images/madagascarJ.jpg', title: 'Madagascar Jasmine'),
                      makeItem(image: 'assets/images/ornamentalP.jpg', title: 'Ornamental Pepper'),
                    ],
                  ),
                ),

              ],
            ),
          )

        ],
      )

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

