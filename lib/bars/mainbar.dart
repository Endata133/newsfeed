import 'dart:ui';

import 'package:flutter/material.dart';

class MainBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF252525), // Background color from CSS
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header Section with Dashboard Title
          Padding(
            padding: const EdgeInsets.only(top: 30.0, left: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Dashboard Title
                Text(
                  'Dashboard',
                  style: TextStyle(
                    fontFamily: 'Poppins', // From CSS
                    fontSize: 1, // Font size from CSS
                    fontWeight: FontWeight.w400,
                    color: const Color(0xFFFFFAFA), // White color
                    letterSpacing: 0.02,
                    shadows: [
                      Shadow(
                        offset: Offset(-15, 19),
                        blurRadius: 77.3,
                        color: const Color.fromRGBO(247, 147, 26, 0.6),
                      ),
                      Shadow(
                        offset: Offset(0, 0),
                        blurRadius: 8,
                        color: Colors.black.withOpacity(0.5),
                      ),
                    ],
                  ),
                ),
                
                // Search Bar
                Container(
                  width: 323,
                  height: 54,
                  decoration: BoxDecoration(
                    color: Colors.grey[300], // Search bar background color
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.25),
                        blurRadius: 4,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Icon(Icons.search, color: Colors.black, size: 30),
                      ),
                      Text(
                        'Search for anything',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 32,
                          fontWeight: FontWeight.w300,
                          color: Color(0xFF787878), // Light grey text color
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 30),

          // Trending, Subscriptions, Friends Row
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              _buildCategoryText('Trending', Color(0xFF77AFFF), underline: true),
              const SizedBox(width: 40),
              _buildCategoryText('Subscriptions', Colors.white),
              const SizedBox(width: 40),
              _buildCategoryText('Friends', Colors.white),
            ],
          ),

          const SizedBox(height: 30),

          // Content Section: Image and Text Blocks
          Expanded(
            child: Stack(
              children: [
                // Background image with blur effect
                Positioned(
                  left: -37,
                  top: -39,
                  child: Container(
                    width: 1361,
                    height: 777,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/nathan-dumlao-3w_hlbOAibU-unsplash.jpg'), // Replace with correct asset path
                        fit: BoxFit.cover,
                      ),
                    
                    ),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 55.95, sigmaY: 55.95),
                      child: Container(color: Colors.black.withOpacity(0.0)),
                    ),
                  ),
                ),

                // Main rectangle (Frame 12)
                Positioned(
                  left: 659,
                  top: 384,
                  child: Container(
                    width: 1288,
                    height: 700,
                    decoration: BoxDecoration(
                      color: const Color(0xFFF9F5F5),
                      borderRadius: BorderRadius.circular(60), // From CSS
                    ),
                  ),
                ),

                // Text content inside the main rectangle
                Positioned(
                  left: 76,
                  top: 224,
                  child: Container(
                    width: 568,
                    height: 345,
                    child: Text(
                      "Hi everyone, yesterday I was on the most beautiful mountain in the world! 😍 So happy to be part of the best hiking-team #cheers 🍻 to my friends @lauraalina and @fabian_welsh for making this possible!",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 32,
                        fontWeight: FontWeight.w300,
                        color: Colors.black,
                        letterSpacing: 0.02,
                        height: 1.5,
                      ),
                    ),
                  ),
                ),

                // Profile Image (Rectangle 13)
                Positioned(
                  left: 53,
                  top: 62,
                  child: Container(
                    width: 93,
                    height: 93,
                    decoration: BoxDecoration(
                      color: const Color(0xFF252525),
                      borderRadius: BorderRadius.circular(91),
                      image: DecorationImage(
                        image: AssetImage('assets/elizeu-dias-2EGNqazbAMk-unsplash.jpg'), // Replace with correct asset path
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),

                // Username (Tyler Jones)
                Positioned(
                  left: 181,
                  top: 62,
                  child: Text(
                    'Tyler Jones',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 32,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ),

                // Time Ago (2 hours ago)
                Positioned(
                  left: 185,
                  top: 110,
                  child: Text(
                    '2 hours ago',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Helper method for building category text (Trending, Subscriptions, Friends)
  Widget _buildCategoryText(String text, Color color, {bool underline = false}) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 36,
        fontWeight: FontWeight.w500,
        color: color,
        decoration: underline ? TextDecoration.underline : TextDecoration.none,
      ),
    );
  }
}
