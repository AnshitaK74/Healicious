import 'package:flutter/material.dart';
import 'package:recepie_app/cusine%20builcaed.dart';
import 'package:recepie_app/form.dart';
import 'package:recepie_app/hydration.dart';

class Challenge extends StatefulWidget {
  const Challenge({super.key});

  @override
  State<Challenge> createState() => _ChallengeState();
}

class _ChallengeState extends State<Challenge> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    final cardWidth = screenWidth * 0.7;
    final cardHeight = screenHeight * 0.5;
    final imageHeight = cardHeight * 0.75;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Ready For Challenge',
          style: TextStyle(
            color: Colors.green.shade800,
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          child: Row(
            children: [
              // First Card
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) => Hydration()));
                },
                borderRadius: BorderRadius.circular(16),
                child: SizedBox(
                  width: cardWidth,
                  height: cardHeight,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Card(
                        elevation: 8,
                        shadowColor: Colors.black26,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        clipBehavior: Clip.antiAlias,
                        child: Image.asset(
                          'assets13/images13/water.jpeg',
                          fit: BoxFit.cover,
                          width: cardWidth,
                          height: imageHeight,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Text(
                        '8 Glasses a Day\nHydration Challenge',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.green.shade800,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 20),

              // Second Card
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) => Formm()));
                },
                borderRadius: BorderRadius.circular(16),
                child: SizedBox(
                  width: cardWidth,
                  height: cardHeight,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Card(
                        elevation: 8,
                        shadowColor: Colors.black26,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        clipBehavior: Clip.antiAlias,
                        child: Image.asset(
                          'assets13/images13/garlic.jpeg',
                          fit: BoxFit.cover,
                          width: cardWidth,
                          height: imageHeight,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Text(
                        'Cook & Share\nHealthy Recipe Challenge',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.green.shade800,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 20),

              // Third Card
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) => CuisineGrid()));
                },
                borderRadius: BorderRadius.circular(16),
                child: SizedBox(
                  width: cardWidth,
                  height: cardHeight,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Card(
                        elevation: 8,
                        shadowColor: Colors.black26,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        clipBehavior: Clip.antiAlias,
                        child: Image.asset(
                          'assets13/images13/yes.webp',
                          fit: BoxFit.cover,
                          width: cardWidth,
                          height: imageHeight,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Text(
                        '7 Days\nNo Junk Food Challenge',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.green.shade800,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
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
