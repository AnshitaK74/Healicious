import 'package:flutter/material.dart';

class CrispyDuck extends StatefulWidget {
  const CrispyDuck({super.key});

  @override
  State<CrispyDuck> createState() => _CrispyDuckState();
}

class _CrispyDuckState extends State<CrispyDuck> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "High in Fat: The duck is deep-fried and skin-on, contributing a significant amount of unhealthy saturated fats, leading to weight gain and increased cholesterol levels.",
    "High in Sodium: The soy-based sauce served with crispy duck adds high levels of sodium, which can contribute to hypertension and water retention.",
    "Potential Heart Health Risks: The combination of fat and sodium can negatively affect heart health, raising the risk of cardiovascular diseases."
  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Crispy Duck',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.green.shade800,
            fontSize: width * 0.075, // responsive font size
          ),
        ),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Padding(
          padding: EdgeInsets.all(width * 0.04),
          child: Column(
            children: [
              Card(
                elevation: 6,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(width * 0.025),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(width * 0.025),
                  child: Image.asset(
                    'assets16/images16/31.jpeg',
                    height: height * 0.3,
                    width: width * 0.55,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: height * 0.035),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Nutrients per 1 piece',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: width * 0.05,
                    color: Colors.green.shade800,
                  ),
                ),
              ),
              SizedBox(height: height * 0.03),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade400),
                  borderRadius: BorderRadius.circular(width * 0.015),
                ),
                child: DataTable(
                  columnSpacing: width * 0.04,
                  columns: [
                    DataColumn(
                      label: Text(
                        'Nutrient',
                        style: TextStyle(fontSize: width * 0.04),
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        'Amount',
                        style: TextStyle(fontSize: width * 0.04),
                      ),
                    ),
                  ],
                  rows: [
                    DataRow(cells: [
                      DataCell(Text('Calories',
                          style: TextStyle(fontSize: width * 0.035))),
                      DataCell(Text('500–700 kcal',
                          style: TextStyle(fontSize: width * 0.035))),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Carbohydrates',
                          style: TextStyle(fontSize: width * 0.035))),
                      DataCell(Text('20–30 g',
                          style: TextStyle(fontSize: width * 0.035))),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Protein',
                          style: TextStyle(fontSize: width * 0.035))),
                      DataCell(Text('30–40 g',
                          style: TextStyle(fontSize: width * 0.035))),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Fat',
                          style: TextStyle(fontSize: width * 0.035))),
                      DataCell(Text('40–50 g',
                          style: TextStyle(fontSize: width * 0.035))),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Sodium',
                          style: TextStyle(fontSize: width * 0.035))),
                      DataCell(Text('700–900 mg',
                          style: TextStyle(fontSize: width * 0.035))),
                    ]),
                  ],
                ),
              ),
              SizedBox(height: height * 0.035),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Effects of Crispy Duck',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: width * 0.05,
                    color: Colors.green.shade800,
                  ),
                ),
              ),
              SizedBox(height: height * 0.02),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: impacts.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(bottom: height * 0.015),
                    child: ListTile(
                      title: Text(
                        impacts[index],
                        style: TextStyle(fontSize: width * 0.04),
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
