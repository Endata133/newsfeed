import 'package:flutter/material.dart';

class TopBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150, // Matches height from CSS
      color: const Color(0xFF252525), // Background color from CSS
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween, // Space between rows
        children: [
          // Left row (Peer Logos_new)
      

          // Middle row (Dashboard)
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Dashboard',
                style: TextStyle(
                  fontFamily: 'Poppins', // From CSS
                  fontSize: 96, // From CSS
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFFFFFAFA), // Color from CSS
                  letterSpacing: 0.02, // Letter spacing from CSS
                  shadows: [
                    Shadow(
                      offset: Offset(-15, 19),
                      blurRadius: 77.3,
                      color: Color.fromRGBO(247, 147, 26, 0.6), // Text shadow from CSS
                    ),
                    Shadow(
                      offset: Offset(0, 0),
                      blurRadius: 8,
                      color: Colors.black.withOpacity(0.5),
                    ),
                  ],
                ),
              ),
            ],
          ),

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
            child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Icon(Icons.search, color: Colors.black, size: 30),
                        ),
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

          // Right row (Trending, Subscriptions, Friends)
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Row(
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Trending',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 36,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xFF77AFFF), // Color from CSS
                      decoration: TextDecoration.underline, // Underline from CSS
                      letterSpacing: 0.02,
                    ),
                  ),
                ),
                SizedBox(width: 20), // Spacing between buttons
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Subscriptions',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 36,
                      fontWeight: FontWeight.w500,
                      color: Colors.white, // Color from CSS
                      letterSpacing: 0.02,
                    ),
                  ),
                ),
                SizedBox(width: 20), // Spacing between buttons
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Friends',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 36,
                      fontWeight: FontWeight.w500,
                      color: Colors.white, // Color from CSS
                      letterSpacing: 0.02,
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

  @override
  Size get preferredSize => const Size.fromHeight(336); // Matches the height in the CSS
}
