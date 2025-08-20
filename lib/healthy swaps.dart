import 'package:flutter/material.dart';

class CuisineGrid extends StatelessWidget {
  const CuisineGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Healthy Swaps'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            cuisineCard(context, 'Japanese', 'assets17/images17/z.jpeg'),
            cuisineCard(context, 'Indian', 'assets17/images17/y.jpeg'),
            cuisineCard(context, 'Thai', 'assets17/images17/thai.jpeg'),
            cuisineCard(context, 'Chinese', 'assets17/images17/img.png'),
            cuisineCard(context, 'Mexican', 'assets17/images17/m.jpeg'),
            cuisineCard(context, 'Italian', 'assets17/images17/p.jpeg'),
          ],
        ),
      ),
    );
  }

  Widget cuisineCard(BuildContext context, String name, String imagePath) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CuisineDetailPage(cuisineName: name),
            ),
          );
        },
        borderRadius: BorderRadius.circular(12),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
              child: Image.asset(
                imagePath,
                height: 180,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.only(bottom: 12.0),
              child: Text(
                name,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CuisineDetailPage extends StatelessWidget {
  final String cuisineName;

  const CuisineDetailPage({super.key, required this.cuisineName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('$cuisineName Cuisine')),
      body: Center(
        child: Text(
          'Welcome to $cuisineName Cuisine!',
          style: const TextStyle(fontSize: 22),
        ),
      ),
    );
  }
}
