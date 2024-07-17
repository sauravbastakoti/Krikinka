import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD4FCE4),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 50, 20, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                // Handle back button press
              },
            ),
            const SizedBox(height: 20),
            Center(
              child: Column(
                children: [
                  const CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.person,
                      size: 50,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'User Name',
                    style: GoogleFonts.getFont(
                      'Roboto Condensed',
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      color: const Color(0xFF000000),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    'xxxxxx12345@gmail.com',
                    style: GoogleFonts.getFont(
                      'Roboto Condensed',
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: const Color(0xFF706060),
                    ),
                  ),
                  const SizedBox(height: 20),
                  _buildProfileOption(
                    context,
                    label: 'Personal Information',
                    icon: Icons.person_outline,
                  ),
                  _buildProfileOption(
                    context,
                    label: 'Order History',
                    icon: Icons.history,
                  ),
                  _buildProfileOption(
                    context,
                    label: 'Notifications',
                    icon: Icons.notifications_outlined,
                  ),
                  _buildProfileOption(
                    context,
                    label: 'Feedback',
                    icon: Icons.feedback_outlined,
                  ),
                  _buildProfileOption(
                    context,
                    label: 'Rate Us',
                    icon: Icons.star_border,
                  ),
                  _buildProfileOption(
                    context,
                    label: 'Term of Service',
                    icon: Icons.description_outlined,
                  ),
                  const SizedBox(height: 10),
                  Center(
                    child: TextButton(
                      onPressed: () {
                        // Handle log out button press
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        minimumSize: const Size.fromHeight(50),
                      ),
                      child: Text(
                        'Log Out',
                        style: GoogleFonts.getFont(
                          'Roboto Condensed',
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color(0xFF1B9527),
        unselectedItemColor: const Color(0xFF706060),
        currentIndex: 0,
        onTap: (index) {
          // Handle bottom navigation tap
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.qr_code_scanner),
            label: 'Scan',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chat',
          ),
        ],
      ),
    );
  }

  Widget _buildProfileOption(BuildContext context,
      {required String label, required IconData icon}) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: ListTile(
        leading: Icon(icon, color: const Color(0xFF1B9527)),
        title: Text(
          label,
          style: GoogleFonts.getFont(
            'Roboto Condensed',
            fontWeight: FontWeight.w400,
            fontSize: 18,
            color: const Color(0xFF000000),
          ),
        ),
        trailing: const Icon(Icons.chevron_right),
        onTap: () {
          // Handle option tap
        },
      ),
    );
  }
}
