import 'package:flutter/material.dart';

class Carbs extends StatefulWidget {
  const Carbs({super.key});

  @override
  State<Carbs> createState() => _Carbs();
}

class _Carbs extends State<Carbs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Diverse Thai Carbs Foods',
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: Colors.green.shade800,
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(20),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Popular Thai Carb-Rich Dishes',
                style: TextStyle(fontSize: 20, color: Colors.green.shade800),
              ),
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Card(
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'assets2/images2/pad_krapow.jpg',
                          height: 200,
                          width: 150,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Text('Pad Krapow (Basil Stir-Fry with Rice)')
                  ],
                ),
                Column(
                  children: [
                    Card(
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'assets2/images2/khao_niew_mamuang.jpg',
                          height: 200,
                          width: 150,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Text('Khao Niew Mamuang (Sticky Rice with Mango)')
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 26),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Card(
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'assets2/images2/kanom_krok.jpg',
                          height: 200,
                          width: 150,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Text('Kanom Krok (Coconut Rice Pancakes)')
                  ],
                ),
                Column(
                  children: [
                    Card(
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'assets2/images2/roti.jpg',
                          height: 200,
                          width: 150,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Text('Roti (Thai Flatbread)')
                  ],
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
