import 'package:flutter/material.dart';

class AcesulfameInfo1 extends StatefulWidget {
  const AcesulfameInfo1({super.key});

  @override
  State<AcesulfameInfo1> createState() => _AcesulfameInfo1State();
}

class _AcesulfameInfo1State extends State<AcesulfameInfo1> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "May Alter Gut Microbiota: Acesulfame K has been shown to disrupt gut bacteria balance in some studies.",
    "Insulin Secretion Interference: Its sweet taste may trigger insulin secretion without glucose, potentially affecting blood sugar regulation.",
    "Long-Term Safety Debated: Though approved for use, some researchers raise concerns over long-term metabolic effects.",
    "Often Combined with Other Sweeteners: When used with other artificial sweeteners, the potential impact on gut health may increase."
  ];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Acesulfame K',
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
                padding: EdgeInsets.only(top: screenHeight * 0.02),
                child: Card(
                  elevation: 6,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'assets20/images20/sweet1.jpeg', // Replace with your actual asset path
                      height: screenHeight * 0.3,
                      width: screenWidth * 0.5,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.03),
              SizedBox(height: screenHeight * 0.03),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: DataTable(
                  columnSpacing: screenWidth * 0.1,
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
                  rows: const [
                    DataRow(cells: [
                      DataCell(Text('Calories')),
                      DataCell(Text('0 kcal')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Sugar')),
                      DataCell(Text('0g')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Sodium')),
                      DataCell(Text('0mg')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Fat')),
                      DataCell(Text('0g')),
                    ]),
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.03),
              Padding(
                padding: EdgeInsets.only(left: screenWidth * 0.03),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Effect of Acesulfame K',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: screenWidth * 0.05,
                      color: Colors.green.shade800,
                    ),
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.015),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: impacts.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(bottom: screenHeight * 0.015),
                    child: ListTile(
                      title: Text(
                        impacts[index],
                        style: TextStyle(fontSize: screenWidth * 0.041),
                      ),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
