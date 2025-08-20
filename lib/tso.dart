import 'package:flutter/material.dart';

class TsoChicken extends StatefulWidget {
  const TsoChicken({super.key});

  @override
  State<TsoChicken> createState() => _TsoChickenState();
}

class _TsoChickenState extends State<TsoChicken> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "High in Calories: General Tso's Chicken is typically deep-fried and coated in a sugary sauce, leading to a high calorie count. A typical serving can contain 800–1,000 kcal.",
    "High in Sugar: The sauce for General Tso's Chicken contains a lot of sugar, which may spike blood sugar levels, making it unsuitable for individuals with diabetes or those trying to manage weight.",
    "High in Sodium: The dish is usually prepared with soy sauce and other seasonings that contribute to its high sodium content, potentially raising blood pressure.",
    "High in Fat: Due to the deep-frying process and the sauce, this dish contains unhealthy fats, which can contribute to weight gain and cardiovascular issues if consumed regularly.",
    "May Cause Digestive Discomfort: The combination of sugar, fat, and salt may cause bloating, acid reflux, or indigestion in sensitive individuals."
  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'General Tso Chicken',
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
                    'assets16/images16/34.jpeg',
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
                  'Nutrients per 1 serving',
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
                      DataCell(Text('800–1,000 kcal',
                          style: TextStyle(fontSize: width * 0.035))),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Carbohydrates',
                          style: TextStyle(fontSize: width * 0.035))),
                      DataCell(Text('50–75 g',
                          style: TextStyle(fontSize: width * 0.035))),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Protein',
                          style: TextStyle(fontSize: width * 0.035))),
                      DataCell(Text('30–35 g',
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
                      DataCell(Text('1,500–2,000 mg',
                          style: TextStyle(fontSize: width * 0.035))),
                    ]),
                  ],
                ),
              ),
              SizedBox(height: height * 0.035),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Effects of General Tso\'s Chicken',
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
