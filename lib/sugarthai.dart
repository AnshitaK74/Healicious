import 'package:flutter/material.dart';

class SugaryThaiFood extends StatefulWidget {
  const SugaryThaiFood({super.key});

  @override
  State<SugaryThaiFood> createState() => _SugaryThaiFoodState();
}

class _SugaryThaiFoodState extends State<SugaryThaiFood> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sugary Thai Foods',
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
                'Common Sugary Thai Foods',
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
                          'assets2/images2/thai_sweet_rice.jpg',
                          height: 200,
                          width: 150,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Text('Sticky Rice with Mango (Khao Niew Mamuang)')
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
                          'assets2/images2/thai_coconut_pudding.jpg',
                          height: 200,
                          width: 150,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Text('Thai Coconut Pudding (Sangkhaya)',style: TextStyle(fontSize: 16,color: Colors.green.shade800))
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
                          'assets2/images2/thai_dessert_dumplings.jpg',
                          height: 200,
                          width: 150,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Text('Thai Dumplings with Coconut (Khanom Jeeb)')
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
                          'assets2/images2/thai_ice_cream.jpg',
                          height: 200,
                          width: 150,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Text('Thai Ice Cream (Aero Ice Cream)')
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 26),


        ],
      ),
    );
  }
}
