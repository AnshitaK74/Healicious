import 'package:flutter/material.dart';

class alcohol extends StatefulWidget {
  const alcohol({super.key});

  @override
  State<alcohol> createState() => _alcoholState();
}

class _alcoholState extends State<alcohol> {
  final ScrollController _scrollController = ScrollController();
  final List<String> impacts = [
    "Impaired Blood Sugar Control: Alcohol can interfere with insulin sensitivity, making it harder for your body to regulate glucose levels. This can lead to poor blood sugar control over time.",
    "Increased Triglycerides: Drinking alcohol, especially in excess, can lead to higher triglyceride levels (a type of fat in the blood), which increases the risk of cardiovascular disease, already higher in diabetics.",
    "Dehydration and Hyperglycemia: Alcohol is a diuretic, which can lead to dehydration. Dehydration concentrates glucose in the blood, potentially causing higher blood sugar levels.",
  ];

  @override
  Widget build(BuildContext context) {
    // MediaQuery sizes
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Alcohol',
          style: TextStyle(
            fontSize: screenWidth * 0.08, // 32 → responsive
            fontWeight: FontWeight.bold,
            color: Colors.green.shade800,
          ),
        ),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Padding(
          padding: EdgeInsets.all(screenWidth * 0.04), // 16 → responsive
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: screenHeight * 0.018), // 14
                child: Card(
                  elevation: 6,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(screenWidth * 0.025), // 10
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(screenWidth * 0.025),
                    child: Image.asset(
                      'assets2/images2/beer.jpg',
                      height: screenHeight * 0.3, // 250
                      width: screenWidth * 0.55, // 200
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.035), // 28
              Padding(
                padding: EdgeInsets.only(left: screenWidth * 0.04), // 14
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Nutrients per 1 glass',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: screenWidth * 0.05, // 20
                      color: Colors.green.shade800,
                    ),
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.04), // 30
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
                        )),
                    DataColumn(
                        label: Text(
                          'Values',
                          style: TextStyle(fontSize: screenWidth * 0.045),
                        )),
                  ],
                  rows: [
                    DataRow(cells: [
                      DataCell(Text('Calories',
                          style:
                          TextStyle(fontSize: screenWidth * 0.04))),
                      DataCell(Text('150-200 kcal',
                          style:
                          TextStyle(fontSize: screenWidth * 0.04))),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Carbohydrates',
                          style:
                          TextStyle(fontSize: screenWidth * 0.04))),
                      DataCell(Text('10-15 g',
                          style:
                          TextStyle(fontSize: screenWidth * 0.04))),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Sugar',
                          style:
                          TextStyle(fontSize: screenWidth * 0.04))),
                      DataCell(Text('3 g',
                          style:
                          TextStyle(fontSize: screenWidth * 0.04))),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Alcohol content',
                          style:
                          TextStyle(fontSize: screenWidth * 0.04))),
                      DataCell(Text('4-6%',
                          style:
                          TextStyle(fontSize: screenWidth * 0.04))),
                    ]),
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.04), // 30
              Padding(
                padding: EdgeInsets.only(left: screenWidth * 0.04), // 14
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Effect of Alcohol',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: screenWidth * 0.05, // 20
                      color: Colors.green.shade800,
                    ),
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.013), // 10
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: impacts.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:
                    EdgeInsets.only(bottom: screenHeight * 0.015), // 12
                    child: ListTile(
                      title: Text(
                        impacts[index],
                        style: TextStyle(fontSize: screenWidth * 0.04),
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
