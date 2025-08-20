import 'package:flutter/material.dart';
import 'package:recepie_app/day2indian.dart';

class day1indian extends StatelessWidget {
  const day1indian({super.key});

  @override
  Widget build(BuildContext context) {
    final screensize = MediaQuery.of(context).size;
    final imageSize = screensize.width * 0.3;

    return Scaffold(
      backgroundColor: const Color(0xFFFCF8F3),
      appBar: AppBar(

        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Navigate back to CuisineGrid
          },
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: screensize.width * 0.06,
            vertical: screensize.height * 0.03,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              // 👇 Back Arrow


              Center(
                child: Column(
                  children: [
                    Text(
                      '7 Days No JunkFood\nChallenge',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: screensize.width * 0.06,
                        fontWeight: FontWeight.bold,
                        color: Colors.green.shade800,
                      ),
                    ),
                    SizedBox(height: screensize.height * 0.02),
                    Text(
                      'Swap junk food with healthier option',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: screensize.width * 0.04,
                        color: Colors.green[700],
                      ),
                    ),
                    SizedBox(height: screensize.height * 0.025),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: screensize.width * 0.05,
                        vertical: screensize.height * 0.008,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        'Day 1',
                        style: TextStyle(
                          fontSize: screensize.width * 0.04,
                          color: Colors.green,
                        ),
                      ),
                    ),
                    SizedBox(height: screensize.height * 0.04),
                  ],
                ),
              ),

              // Images Row
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: imageSize,
                        width: imageSize,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets18/images18/j.jpeg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: screensize.height * 0.02),
                      Text(
                        'Maggi',
                        style: TextStyle(
                          fontSize: screensize.width * 0.04,
                          color: Colors.green.shade800,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: screensize.width * 0.05),
                    child: const Icon(
                      Icons.arrow_forward,
                      color: Color(0xFF0D3B2E),
                      size: 30,
                    ),
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: imageSize,
                        width: imageSize,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets18/images18/k.jpeg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: screensize.height * 0.02),
                      Text(
                        'Vegetable Dalia',
                        style: TextStyle(
                          fontSize: screensize.width * 0.04,
                          color: Colors.green.shade800,
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              const Spacer(),
              SizedBox(height: screensize.width * 0.08),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const day2indian()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green.shade800,
                    padding: EdgeInsets.symmetric(
                      vertical: screensize.height * 0.018,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: Text(
                    'Next',
                    style: TextStyle(
                      fontSize: screensize.width * 0.045,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}