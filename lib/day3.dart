import 'package:flutter/material.dart';

class day3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final screensize=MediaQuery.of(context).size;
    final imageSize=screensize.width*0.3;
    return Scaffold(
      backgroundColor: Color(0xFFFCF8F3), // Light off-white background
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal:screensize.width*0.06, vertical:screensize.height*0.03),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                '7 Days No JunkFood\nChallenge',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: screensize.width*0.06,
                  fontWeight: FontWeight.bold,
                  color:Colors.green.shade800, // Dark green
                ),
              ),
              SizedBox(height: screensize.height*0.02,),
              Text(
                'Swap junk food with healthier option',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: screensize.width*0.04,
                  color: Colors.green[700],
                ),
              ),
              SizedBox(height: screensize.height*0.025),
              Container(
                padding: EdgeInsets.symmetric(horizontal:screensize.width*0.05, vertical:screensize.height*0.008),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  'Day 1',
                  style: TextStyle(
                    fontSize: screensize.width*0.04,
                    color: Colors.green,
                  ),
                ),
              ),
              SizedBox(height: screensize.height*0.04),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Column(
                          children: [


                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                'assets13/images13/bhaji.jpeg',
                                width: imageSize,
                                height: imageSize,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: screensize.height*0.02),
                      Text(
                        'Maida Pav',
                        style: TextStyle(
                          fontSize: screensize.width*0.04,
                          color: Colors.black87,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal:screensize.width*0.05),
                    child: Icon(
                      Icons.arrow_forward,
                      color: Color(0xFF0D3B2E),
                      size: 30,
                    ),
                  ),
                  Column(
                    children: [
                      Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Column(
                          children: [


                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                'assets13/images13/multi.jpeg',
                                width: imageSize,
                                height: imageSize,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: screensize.height*0.02),
                      Text(
                        'Multigrain pav',
                        style: TextStyle(
                          fontSize: screensize.width*0.04,
                          color: Colors.black87,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Spacer(),
              SizedBox(height:screensize.width*0.08),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    // Navigate or action
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green.shade800, // Dark green
                    padding: EdgeInsets.symmetric(vertical: screensize.height*0.018),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: Text(
                    'Next',
                    style: TextStyle(fontSize: screensize.width*0.045, color: Colors.white),
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