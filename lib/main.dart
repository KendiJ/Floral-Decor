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
      backgroundColor: Colors.grey[100],
      body: Column(
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
          
        ],
      )

    );
  }
}

