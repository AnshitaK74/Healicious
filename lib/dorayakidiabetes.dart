import 'package:flutter/material.dart';

class Dorayaki111 extends StatefulWidget {
  const Dorayaki111({super.key});

  @override
  State<Dorayaki111> createState() => _Dorayaki111State();
}

class _Dorayaki111State extends State<Dorayaki111> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "High in Refined Sugar: The sweet red bean paste and pancake batter are loaded with sugar, causing sharp spikes in blood glucose.",
    "Refined Flour: The pancakes are made with white flour, which has a high glycemic index and lacks fiber.",
    "Low Satiety: Despite being calorie-dense, dorayaki doesn’t keep you full for long, which may lead to overeating.",
    "Hidden Sugars: Packaged versions may contain corn syrup or other sweeteners, making carb management harder for diabetics.",
    "Increased Insulin Demand: The combination of sugar and starch increases insulin demand, worsening insulin sensitivity over time."
  ];

  @override
  Widget build(BuildContext context) {
    // MediaQuery sizes
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Dorayaki',
          style: TextStyle(
            fontSize: screenWidth * 0.08, // responsive like ramen1111
            fontWeight: FontWeight.bold,
            color: Colors.green.shade800,
          ),
        ),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Padding(
          padding: EdgeInsets.all(screenWidth * 0.04), // responsive padding
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: screenHeight * 0.018),
                child: Card(
                  elevation: 6,
                  shape: RoundedRectangleBorder(
                    borderRadius:
                    BorderRadius.circular(screenWidth * 0.025), // 10
                  ),
                  child: ClipRRect(
                    borderRadius:
                    BorderRadius.circular(screenWidth * 0.025), // 10
                    child: Image.asset(
                      'assets5/images5/dora.jpeg',
                      height: screenHeight * 0.3, // same as ramen1111
                      width: screenWidth * 0.55,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.028),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Nutrients per 1 piece (80–90g)',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: screenWidth * 0.05,
                    color: Colors.green.shade800,
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.04),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius:
                  BorderRadius.circular(screenWidth * 0.013), // 5
                ),
                child: DataTable(
                  columns: [
                    DataColumn(
                      label: Text(
                        'Nutrients',
                        style: TextStyle(fontSize: screenWidth * 0.045),
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        'Values',
                        style: TextStyle(fontSize: screenWidth * 0.045),
                      ),
                    ),
                  ],
                  rows: [
                    DataRow(cells: [
                      DataCell(Text('Calories',
                          style:
                          TextStyle(fontSize: screenWidth * 0.04))),
                      DataCell(Text('220–280 kcal',
                          style:
                          TextStyle(fontSize: screenWidth * 0.04))),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Carbohydrates',
                          style:
                          TextStyle(fontSize: screenWidth * 0.04))),
                      DataCell(Text('40–45 g',
                          style:
                          TextStyle(fontSize: screenWidth * 0.04))),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Sugar',
                          style:
                          TextStyle(fontSize: screenWidth * 0.04))),
                      DataCell(Text('20–25 g',
                          style:
                          TextStyle(fontSize: screenWidth * 0.04))),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Fat',
                          style:
                          TextStyle(fontSize: screenWidth * 0.04))),
                      DataCell(Text('5–8 g',
                          style:
                          TextStyle(fontSize: screenWidth * 0.04))),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Protein',
                          style:
                          TextStyle(fontSize: screenWidth * 0.04))),
                      DataCell(Text('4–6 g',
                          style:
                          TextStyle(fontSize: screenWidth * 0.04))),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Fiber',
                          style:
                          TextStyle(fontSize: screenWidth * 0.04))),
                      DataCell(Text('0.5–1 g',
                          style:
                          TextStyle(fontSize: screenWidth * 0.04))),
                    ]),
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.035),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Effects of Dorayaki',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: screenWidth * 0.05,
                    color: Colors.green.shade800,
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.015),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                padding: EdgeInsets.all(screenWidth * 0.025),
                itemCount: impacts.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:
                    EdgeInsets.only(bottom: screenHeight * 0.015),
                    child: ListTile(
                      title: Text(
                        impacts[index],
                        style:
                        TextStyle(fontSize: screenWidth * 0.04),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
