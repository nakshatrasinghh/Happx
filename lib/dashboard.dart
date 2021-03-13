import 'package:flutter/material.dart';
import 'package:hach4happ/Breathing/breathing.dart';
import 'package:hach4happ/Food/food.dart';
import 'package:hach4happ/Stretching/stretching.dart';
import 'package:hach4happ/Yoga/yoga.dart';
import 'dart:ui';
import 'Workout/workoutpage.dart';
import 'constants/data.dart';

class DashboardScreen extends StatefulWidget {
static const routeName = '/dashboard';
_DashboardScreenState createState() => _DashboardScreenState();
}



class _DashboardScreenState extends State<DashboardScreen> {
  PageController _pageController;
  double _currentPageValue = 0.0;

  @override
  void initState() {
    super.initState();
    // Avoid pixel render overflow, set viewport > 0.5 for stable build
    // viewportFraction => Similar to % of screen occupied
    _pageController = PageController(viewportFraction: 0.8)
      ..addListener(
            () {
          setState(() {
            _currentPageValue = _pageController.page;
          });
        },
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        // Center title required for Android device
        centerTitle: true,
        title: Text(
          'The Happiness App', style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        ),
      ),
      // Stacks widgets upon each other
      body: Stack(
        // Background image container starts from here 👇
        children: [
          // Background image container with BackDropFilter as child
          // Image is put using BoxDecoration
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                // items is imported from constants/data.dart
                image: AssetImage(items[_currentPageValue.round()]['image']),
                fit: BoxFit.cover,
              ),
            ),
            child: BackdropFilter(
              // Applies filter on the image
              filter: ImageFilter.blur(sigmaX: 7, sigmaY: 7),
              // Default color of filter is white with no opacity
              // Hence passing a color becomes necessary
              child: Container(
                color: Colors.black.withOpacity(0.25),
              ),
            ),
          ),
          // Everything after background image blur starts from here 👇
          Center(
            child: Container(
              height: 590,
              // Builds multi widgets in one dart screen
              child: PageView.builder(
                // Controls page index
                controller: _pageController,
                // No of items to be displayed
                itemCount: items.length,
                // Builds the widget which is returned
                itemBuilder: (context, index) {
                  // Scales image inside the container on top of the blur filter
                  var scale = (1 - (_currentPageValue - index).abs());
                  // Creates a widget that detects gestures
                  return GestureDetector(
                    // When the widget is tapped, the GestureDetector widget pushes
                    // itself to the classification page
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            if(_currentPageValue==0.0){
                              return BreathingPage();
                            }
                            if(_currentPageValue==1.0){
                              return StretchingPage();
                            }
                            if(_currentPageValue==2.0){
                              return YogaScreen();
                            }
                            if(_currentPageValue==3.0){
                              return FoodPage();
                            }
                            return new ProductPage();
                            },
                        ),
                      );
                    },
                    child: Container(
                      // Image container on top of blur filter container from here 👇
                      // Displays the items image and rounds the borders
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        image: DecorationImage(
                          image: AssetImage(items[index]['image']),
                          fit: BoxFit.cover,
                        ),
                      ),
                      // Margins the image container from the horizontal and vertical sides
                      margin: EdgeInsets.symmetric(
                        // gives gap between 2 images
                        horizontal: 7.5,
                        // Gives vertical gap for better UX
                        vertical: 30 - 30 * scale,
                      ),
                      // Text container
                      child: Column(
                        // Aligns text container to end of the page
                        mainAxisAlignment: MainAxisAlignment.end,
                        // Text container code from here 👇
                        children: [
                          Container(
                            // Provides padding from horizontal and vertical sides
                            // in the text container
                            padding: const EdgeInsets.symmetric(
                              horizontal: 25,
                              vertical: 30,
                            ),
                            // Blurs and rounds the text container
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.45),
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(30),
                                bottomRight: Radius.circular(30),
                              ),
                            ),
                            child: Column(
                              // Left aligns title in text container
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  items[index]['title'],
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                // Provides padding between title and text in text container
                                Padding(padding: const EdgeInsets.all(8)),
                                Text(
                                  items[index]['text'],
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
