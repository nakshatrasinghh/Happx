import 'package:flutter/material.dart';
import 'package:hach4happ/Workout/workoutpage.dart';
import 'package:hach4happ/constants/data2.dart';

class FoodPage extends StatefulWidget {
  @override
  _FoodPageState createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.deepPurpleAccent,
        // Center title required for Android device
        centerTitle: true,
        title: Text(
          'Food is Critical 🥗', style: TextStyle(
          fontSize: 23,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.deepPurpleAccent,
          child: Column(
            children: <Widget>[
              Padding(padding: const EdgeInsets.all(5.0)),
              Container(
                height: 820.0,
                child: ListView(
                  padding: EdgeInsets.all(10),
                  scrollDirection: Axis.vertical,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            image: DecorationImage(
                                image: AssetImage('assets/images/food_1.jpeg'),
                                fit: BoxFit.cover
                            )
                        ),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return new ProductPage(
                                    productData: food[0],
                                  );
                                },
                              ),
                            );
                          },
                        ),
                        height: 500,
                        width: double.infinity,
                      ),
                    ),
                    Padding(padding: const EdgeInsets.all(5),
                        child: Text("Protein", style: TextStyle(
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.bold,
                            fontSize: 23,
                            color: Colors.black
                        ), textAlign: TextAlign.center,)
                    ),
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            image: DecorationImage(
                                image: AssetImage('assets/images/food_2.jpeg'),
                                fit: BoxFit.cover
                            )
                        ),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return new ProductPage(
                                    productData: food[1],
                                  );
                                },
                              ),
                            );
                          },
                        ),
                        height: 500,
                        width: double.infinity,
                      ),
                    ),
                    Padding(padding: const EdgeInsets.all(5),
                        child: Text("Less Saturated Fat", style: TextStyle(
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.bold,
                            fontSize: 23,
                            color: Colors.black
                        ), textAlign: TextAlign.center,)
                    ),
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            image: DecorationImage(
                                image: AssetImage('assets/images/food_3.jpeg'),
                                fit: BoxFit.cover
                            )
                        ),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return new ProductPage(
                                    productData: food[2],
                                  );
                                },
                              ),
                            );
                          },
                        ),
                        height: 500,
                        width: double.infinity,
                      ),
                    ),
                    Padding(padding: const EdgeInsets.all(5),
                        child: Text("Velvet Beans", style: TextStyle(
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.bold,
                            fontSize: 23,
                            color: Colors.black
                        ), textAlign: TextAlign.center,)
                    ),
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            image: DecorationImage(
                                image: AssetImage('assets/images/food_4.png'),
                                fit: BoxFit.cover
                            )
                        ),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return new ProductPage(
                                    productData: food[3],
                                  );
                                },
                              ),
                            );
                          },
                        ),
                        height: 500,
                        width: double.infinity,
                      ),
                    ),
                    Padding(padding: const EdgeInsets.all(5),
                        child: Text("Consume Probiotics", style: TextStyle(
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.bold,
                            fontSize: 23,
                            color: Colors.black
                        ), textAlign: TextAlign.center,)
                    ),
                    Padding(padding: const EdgeInsets.all(150))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
