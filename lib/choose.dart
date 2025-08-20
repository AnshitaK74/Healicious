import 'package:flutter/material.dart';
class choose extends StatefulWidget {
  const choose({super.key});

  @override
  State<choose> createState() => _chooseState();
}

class _chooseState extends State<choose> {

  final List<Map<String, String>> cuisines = [

  {
  'name': 'Japnease',
  'subtitle': 'Unhealthy Japnease Food and Healthy Swaps',
  'image':
  'assets14/images14/a.jpg',
},
    {
      'name': 'Indian',
      'subtitle': 'Unhealthy Indian Food and Healthy Swaps',
      'image':
      'assets14/images14/.jpeg',
    },
    {
      'name': 'Thai',
      'subtitle': 'Unhealthy Thai Food and Healthy Swaps',
      'image':
      'assets14/images14/img.png',
    },
    {
      'name': 'Chinease',
      'subtitle': 'Unhealthy Chinease Food and Healthy Swaps',
      'image':
      'assets14/images14/d.jpeg',
    }, {
      'name': 'Mexican',
      'subtitle': 'Unhealthy Mexican Food and Healthy Swaps',
      'image':
      'assets14/images14/b.jpeg',
    },
    {
      'name': 'Italian',
      'subtitle': 'Unhealthy Italian Food and Healthy Swaps',
      'image':
      'assets14/images14/c.jpg',
    },






  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cusines Healthy Swaps'),
        centerTitle: true,
      ),

      body: Padding(
    padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(child: buildCard(cuisines[0])),
                Expanded(child: buildCard(cuisines[1])),
              ],
            ),
            Row(
              children: [
                Expanded(child: buildCard(cuisines[2])),
                Expanded(child: buildCard(cuisines[3])),
              ],
            ),
          ],
        ),
      ),



    );
  }

  buildCard(Map<String, String> cuisine) {


    return Card(
      child: Column(
        children: [
          Image.asset(
            cuisine['image']!,
            height: 100,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Text(cuisine['name']!, style: TextStyle(fontWeight: FontWeight.bold)),
          Text(cuisine['subtitle']!, textAlign: TextAlign.center),
        ],
      ),
    );


  }
}
