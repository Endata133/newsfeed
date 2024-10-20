import 'package:flutter/material.dart';

class SidebarLeft extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * (567 / 3840), // Proportional width
      height: MediaQuery.of(context).size.height, // Full screen height
      color: const Color(0xFF252525), // Background color from CSS
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Apply Filter Section
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Apply Filter',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 48,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                  letterSpacing: 0.02,
                ),
              ),
            ),
            Divider(color: Colors.white38), // Divider for visual separation

            // Fotos, Notes, Music
            ListTile(
              leading: Icon(Icons.image, color: Color(0xFF77AFFF), size: 48),
              title: Text(
                'Fotos, Notes, Music',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 32,
                  fontWeight: FontWeight.w300,
                  color: Colors.white,
                ),
              ),
            ),

            // Video Section
            ListTile(
              leading: Icon(Icons.video_library, color: Colors.white, size: 48),
              title: Text(
                'Video',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 32,
                  fontWeight: FontWeight.w300,
                  color: Colors.white,
                ),
              ),
            ),

            // Polls, Quizzes, Events Section
            ListTile(
              leading: Icon(Icons.event_note, color: Colors.white, size: 48),
              title: Text(
                'Polls, Quizzes, Events',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 32,
                  fontWeight: FontWeight.w300,
                  color: Colors.white,
                ),
              ),
            ),

            Spacer(), // Pushes the following content to the bottom

            // Paid Content Section
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20.0),
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: const Color(0xFF363636),
                border: Border.all(color: Color(0xFFF7931A), width: 4),
                borderRadius: BorderRadius.circular(175),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFFF7931A).withOpacity(0.8),
                    blurRadius: 12,
                    offset: Offset(0, 4),
                  ),
                  BoxShadow(
                    color: Colors.black.withOpacity(0.25),
                    blurRadius: 42,
                    offset: Offset(-24, 7),
                  ),
                ],
              ),
              child: Center(
                child: Text(
                  'Paid Content',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 32,
                    fontWeight: FontWeight.w300,
                    color: Colors.white,
                  ),
                ),
              ),
            ),

            SizedBox(height: 10), // Spacing

            // Free Content Section
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20.0),
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: const Color(0xFF363636),
                borderRadius: BorderRadius.circular(175),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.4),
                    blurRadius: 31.4,
                    offset: Offset(-11, 5),
                  ),
                ],
              ),
              child: Center(
                child: Text(
                  'Free Content',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 32,
                    fontWeight: FontWeight.w300,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
