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
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Container(
              width: 32, // Width from CSS
              height: 92, // Height from CSS
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/PeerSignet_SW_RGB.png'), // Use the correct asset path
                  fit: BoxFit.contain,
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(-15, 19), // Drop shadow from CSS
                    blurRadius: 77.3,
                    color: Color.fromRGBO(247, 147, 26, 0.4), // Shadow color from CSS
                  ),
                ],
              ),
            ),
          ),

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
