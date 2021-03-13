import 'package:flutter/material.dart';
import 'package:hach4happ/Workout/workoutpage.dart';
import 'package:hach4happ/constants/data2.dart';

class StretchingPage extends StatefulWidget {
  @override
  _StretchingPageState createState() => _StretchingPageState();
}

class _StretchingPageState extends State<StretchingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.deepPurpleAccent,
        // Center title required for Android device
        centerTitle: true,
        title: Text(
          'Just Stretch 🙆', style: TextStyle(
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
                                image: AssetImage('assets/images/stretching_1.jpeg'),
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
                                    productData: stretch[0],
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
                        child: Text("Knee to Chest Stretching", style: TextStyle(
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
                                image: AssetImage('assets/images/stretching_2.jpeg'),
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
                                    productData: stretch[1],
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
                        child: Text("Lunging Hip Flexor Stretch", style: TextStyle(
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
                                image: AssetImage('assets/images/stretching_3.png'),
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
                                    productData: stretch[2],
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
                        child: Text("Seated Shoulder Squeeze", style: TextStyle(
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
                                image: AssetImage('assets/images/stretching_5.jpeg'),
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
                                    productData: stretch[3],
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
                        child: Text("Lying Quad Stretch", style: TextStyle(
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
