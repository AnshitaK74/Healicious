import 'package:flutter/material.dart';

class padseewa extends StatefulWidget {
  const padseewa({super.key});

  @override
  State<padseewa> createState() => _padseewaState();
}

class _padseewaState extends State<padseewa> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "Low Fiber Content: Pad See Ew is typically made with refined rice noodles, which lack fiber. A low-fiber diet can lead to slower digestion and irregular bowel movements, negatively impacting gut health.",
    "High Sodium Levels: The soy sauce used in Pad See Ew can contain a high amount of sodium. Excess sodium can disrupt the balance of gut microbiota and increase water retention.",
    "Oil and Fat: While stir-frying adds flavor, excessive oil (especially reused or poor-quality oil) can irritate the gut lining and may cause bloating or discomfort in sensitive individuals.",
    "Limited Fermented Ingredients: Unlike some other Thai dishes, Pad See Ew usually lacks fermented components like pickled vegetables or fish sauce, which can benefit gut flora.",
  ];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    final padding = screenWidth * 0.04;
    final fontSizeTitle = screenWidth * 0.05;
    final fontSizeText = screenWidth * 0.04;
    final imageHeight = screenHeight * 0.3;
    final imageWidth = screenWidth * 0.5;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Pad See Ew',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: fontSizeTitle + 10,
              color: Colors.green.shade800),
        ),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            SizedBox(height: padding),
            Card(
              elevation: 6,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets20/images20/103.jpeg', // Update image path as needed
                  height: imageHeight,
                  width: imageWidth,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: padding),
            Padding(
              padding: EdgeInsets.only(left: padding),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Nutrients per 1 plate',
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: fontSizeTitle,
                      color: Colors.green.shade800),
                ),
              ),
            ),
            SizedBox(height: padding),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(5),
              ),
              child: DataTable(
                columns: [
                  DataColumn(label: Text('Nutrient', style: TextStyle(fontSize: fontSizeText))),
                  DataColumn(label: Text('Amount per 1 plate', style: TextStyle(fontSize: fontSizeText))),
                ],
                rows: [
                  DataRow(cells: [
                    DataCell(Text('Calories', style: TextStyle(fontSize: fontSizeText))),
                    DataCell(Text('450–600 kcal', style: TextStyle(fontSize: fontSizeText))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Carbohydrates', style: TextStyle(fontSize: fontSizeText))),
                    DataCell(Text('55–70 g', style: TextStyle(fontSize: fontSizeText))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Protein', style: TextStyle(fontSize: fontSizeText))),
                    DataCell(Text('15–20 g', style: TextStyle(fontSize: fontSizeText))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Fat', style: TextStyle(fontSize: fontSizeText))),
                    DataCell(Text('15–25 g', style: TextStyle(fontSize: fontSizeText))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Fibre', style: TextStyle(fontSize: fontSizeText))),
                    DataCell(Text('2–3 g', style: TextStyle(fontSize: fontSizeText))),
                  ]),
                ],
              ),
            ),
            SizedBox(height: padding),
            Padding(
              padding: EdgeInsets.only(left: padding),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Effect of Pad See Ew on Gut',
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: fontSizeTitle,
                      color: Colors.green.shade800),
                ),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: impacts.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(bottom: padding / 1.5),
                  child: ListTile(
                    title: Text(
                      impacts[index],
                      style: TextStyle(fontSize: fontSizeText),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
