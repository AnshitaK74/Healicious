import 'package:flutter/material.dart';
import 'package:recepie_app/day1japan.dart';
import 'package:recepie_app/day3japan.dart'; // 👈 Make sure this file exists

class day2japan extends StatelessWidget {
  const day2japan({super.key});

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
            crossAxisAlignment: CrossAxisAlignment.center,
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
                  'Day 2',
                  style: TextStyle(
                    fontSize: screensize.width * 0.04,
                    color: Colors.green,
                  ),
                ),
              ),
              SizedBox(height: screensize.height * 0.04),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'assets14/images14/g.jpeg',
                            width: imageSize,
                            height: imageSize,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(height: screensize.height * 0.02),
                      Text(
                        'Ramen',
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
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'assets14/images14/f.jpeg',
                            width: imageSize,
                            height: imageSize,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(height: screensize.height * 0.02),
                      Text(
                        'Soba',
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
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) =>  day3japan()),
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
