
import 'package:design_beru/second.dart';

import 'bottom_bar.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NewScreen(),
    );
  }
}

class NewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 3.0,
          title: Text(
            'Vegetables',
            style: TextStyle(
              fontSize: 30.0,
              color: Colors.green[800],
              //color: Color(0xff545d68),
              fontFamily: 'SourceSansPro',
              fontWeight: FontWeight.bold,
            ),
          ),
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.green[800],
              // color: Color(0xff545d68),
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.white,
          child: Image(image: AssetImage('images/logo.png')),
//       backgroundColor: Color(0x),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomBar(),
        body: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 20.0,
          mainAxisSpacing: 30.0,
          crossAxisCount: 2,
          childAspectRatio: 0.7,
          children: <Widget>[
            buildCard('Capsicum', ' \₹50.0', 'images/capsicum.jpg', context),
            buildCard('Garlic', '\₹50.0', 'images/garlic.jpg', context),
            buildCard('Potato', '\₹50.0', 'images/potato.jpg', context),
            buildCard('Watermelon', '\₹50.0', 'images/watermelon.jpg', context),
            buildCard('Turmeric', '\₹50.0', 'images/turmeric.jpg', context),
          ],
        ),
      );
  }
}


Widget buildCard(String name, String price, String imgPath, context) {

  return Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 5.0,
            blurRadius: 5.0,
          ),
        ],
        color: Colors.white),
    child: Column(
      children: <Widget>[
        Hero(
            tag: imgPath,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 120.0,
                width: 140.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 1.6,
                        blurRadius: 7.0,
                      ),
                    ],
                    color: Colors.white),
                child: Container(
                  height: 75.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          imgPath,
                        ),
                        fit: BoxFit.contain),
                  ),
                ),
              ),
            )),
        SizedBox(
          height: 7.0,
        ),
        Text(
          name,
          style: TextStyle(
              color: Color(0xff575e67),
              fontFamily: 'SourceSansPro',
              fontSize: 18.0,
              fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 7.0,
        ),
        Text(
          price,
          style: TextStyle(
            color: Color(0xffcc8053),
            fontFamily: 'SourceSansPro',
            fontSize: 14.0,
            fontWeight: FontWeight.w600,
          ),
        ),
        AspectRatio(aspectRatio: 10.0),
        Container(
          height: 30.0,
          width: 150.0,
          decoration: BoxDecoration(
            color: Colors.green[800],
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: FlatButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>Details(),
                ),
              );
            },
            child: Center(
                child: Text(
                  'Buy Now',
                  style: TextStyle(color: Colors.white),
                )),
          ),
        ),
      ],
    ),
  );
}
