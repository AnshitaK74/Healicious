import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:recepie_app/login2.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final User? user = FirebaseAuth.instance.currentUser;
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(0xFFd0f0c0), // Light green background
      appBar: AppBar(
        title: const Text('My Account'),
        backgroundColor: Colors.green.shade700,
        elevation: 0,
      ),
      body: user == null
          ? Center(
        child: Text(
          'No user is logged in',
          style: TextStyle(fontSize: screenWidth * 0.045),
        ),
      )
          : Center(
        child: Card(
          elevation: 6,
          margin: EdgeInsets.symmetric(
              horizontal: screenWidth * 0.06,
              vertical: screenHeight * 0.05),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(screenWidth * 0.05),
          ),
          child: Padding(
            padding: EdgeInsets.all(screenWidth * 0.06),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircleAvatar(
                  radius: screenWidth * 0.13,
                  backgroundColor: Colors.green,
                  child: Icon(
                    Icons.person,
                    size: screenWidth * 0.15,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: screenHeight * 0.03),
                Text(
                  user.email ?? 'No Email Found',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: screenWidth * 0.05,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(height: screenHeight * 0.01),
                Text(
                  'Password: ********',
                  style: TextStyle(
                    fontSize: screenWidth * 0.04,
                    color: Colors.grey,
                    letterSpacing: 2,
                  ),
                ),
                SizedBox(height: screenHeight * 0.04),
                ElevatedButton.icon(
                  onPressed: () async {
                    await FirebaseAuth.instance.signOut();
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const login2()),
                    );
                  },
                  icon: Icon(
                    Icons.logout,
                    size: screenWidth * 0.06,
                  ),
                  label: Text('Log Out'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(
                        horizontal: screenWidth * 0.08,
                        vertical: screenHeight * 0.02),
                    shape: RoundedRectangleBorder(
                      borderRadius:
                      BorderRadius.circular(screenWidth * 0.03),
                    ),
                    textStyle:
                    TextStyle(fontSize: screenWidth * 0.045),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
