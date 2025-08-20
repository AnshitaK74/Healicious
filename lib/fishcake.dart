import 'package:flutter/material.dart';

class FishCake extends StatefulWidget {
  const FishCake({super.key});

  @override
  State<FishCake> createState() => _FishCakeState();
}

class _FishCakeState extends State<FishCake> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "Starch Fillers: Processed fish cakes often contain added starches like potato or corn starch, raising the glycemic index.",
    "Hidden Sugars: Many varieties include sugar or glucose syrup, which can spike blood sugar levels quickly.",
    "Low in Real Fish: The fish content is often minimal, reducing the protein benefit and increasing filler load.",
    "Preservatives and Additives: These can promote inflammation and metabolic stress, worsening insulin sensitivity.",
    "High Sodium: Excess sodium contributes to hypertension, a common comorbidity in diabetes."
  ];

  @override
  Widget build(BuildContext context) {
    // Get screen sizes for responsiveness
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Fish Cake',
          style: TextStyle(
            fontSize: screenWidth * 0.08,
            fontWeight: FontWeight.bold,
            color: Colors.green.shade800,
          ),
        ),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Padding(
          padding: EdgeInsets.all(screenWidth * 0.04),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: screenHeight * 0.018),
                child: Card(
                  elevation: 6,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(screenWidth * 0.025),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(screenWidth * 0.025),
                    child: Image.asset(
                      'assets2/images2/fish.jpeg',
                      height: screenHeight * 0.3,
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
                  'Nutrients per 100g',
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
                  borderRadius: BorderRadius.circular(screenWidth * 0.013),
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
                          style: TextStyle(fontSize: screenWidth * 0.04))),
                      DataCell(Text('140–180 kcal',
                          style: TextStyle(fontSize: screenWidth * 0.04))),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Carbohydrates',
                          style: TextStyle(fontSize: screenWidth * 0.04))),
                      DataCell(Text('12–20 g',
                          style: TextStyle(fontSize: screenWidth * 0.04))),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Fiber',
                          style: TextStyle(fontSize: screenWidth * 0.04))),
                      DataCell(Text('<1 g',
                          style: TextStyle(fontSize: screenWidth * 0.04))),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Fat',
                          style: TextStyle(fontSize: screenWidth * 0.04))),
                      DataCell(Text('8–12 g',
                          style: TextStyle(fontSize: screenWidth * 0.04))),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Protein',
                          style: TextStyle(fontSize: screenWidth * 0.04))),
                      DataCell(Text('7–10 g',
                          style: TextStyle(fontSize: screenWidth * 0.04))),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Sodium',
                          style: TextStyle(fontSize: screenWidth * 0.04))),
                      DataCell(Text('600–900 mg',
                          style: TextStyle(fontSize: screenWidth * 0.04))),
                    ]),
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.035),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Effects of FishCake',
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
                    padding: EdgeInsets.only(bottom: screenHeight * 0.015),
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
