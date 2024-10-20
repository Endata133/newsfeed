import 'package:flutter/material.dart';

class SidebarRight extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * (703 / 2160), // Proportional width from CSS
      height: MediaQuery.of(context).size.height, // Full screen height
      color: const Color(0xFF252525), // Background color from CSS
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          // Profile Picture with Glow Effect
          Container(
            width: 279,
            height: 279,
            decoration: BoxDecoration(
              color: Colors.grey,
              shape: BoxShape.circle,
              image: const DecorationImage(
                image: AssetImage('assets/mario-la-pergola-iEpOxUNAjbo-unsplash.jpg'), // Replace with your asset path
                fit: BoxFit.cover,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  blurRadius: 100.8,
                  offset: Offset(7, 20),
                ),
              ],
            ),
          ),

          const SizedBox(height: 30),

          // User Name "Julia Harrison"
          Text(
            'Julia Harrison',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 64,
              fontWeight: FontWeight.w400,
              color: Colors.white,
              letterSpacing: 0.02,
            ),
          ),

          // Username "@mc_juli_420"
          const SizedBox(height: 10),
          Text(
            '@mc_juli_420',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 32,
              fontWeight: FontWeight.w300,
              color: Colors.white,
              letterSpacing: 0.02,
            ),
          ),

          const SizedBox(height: 20),

          // Stats (Posts, Followers, Following)
          _buildStatsRow(),

          const SizedBox(height: 40),

          // Profile Info Section (e.g., posts, followers)
          _buildProfileInfoBox(),

          const Spacer(), // Push the following content to the bottom

          // Create Post Button Placeholder
          Container(
            width: 73,
            height: 73,
            decoration: BoxDecoration(
              color: Colors.blueGrey,
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white, width: 4),
            ),
            child: const Icon(Icons.add, color: Colors.white, size: 40),
          ),

          const SizedBox(height: 30),
        ],
      ),
    );
  }

  // Widget for building stats row (Posts, Followers, Following)
  Widget _buildStatsRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildStatItem('42', 'Posts'),
        _buildStatItem('6.9k', 'Followers'),
        _buildStatItem('420', 'Following'),
      ],
    );
  }

  // Helper for building individual stat items
  Widget _buildStatItem(String value, String label) {
    return Column(
      children: [
        Text(
          value,
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 48,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          label,
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 24,
            fontWeight: FontWeight.w300,
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  // Widget for building profile info box
  Widget _buildProfileInfoBox() {
    return Container(
      width: 530,
      height: 202,
      decoration: BoxDecoration(
        color: const Color(0xFF363636),
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            blurRadius: 74.8,
            offset: Offset(29, 25),
          ),
        ],
      ),
      padding: const EdgeInsets.all(16.0),
      child: Center(
        child: Text(
          'Profile Info Here', // Placeholder for actual info
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 32,
            fontWeight: FontWeight.w300,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
