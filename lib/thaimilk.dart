import 'package:flutter/material.dart';

class MilkScreen extends StatefulWidget {
  const MilkScreen({super.key});

  @override
  State<MilkScreen> createState() => _MilkScreenState();
}

class _MilkScreenState extends State<MilkScreen> {
  final ScrollController _scrollController = ScrollController();

  final List<String> impacts = [
    "Blood Sugar Spikes (in flavored or sweetened milk): Many dairy drinks — like flavored milk, milk tea, milkshakes — contain added sugar, which can rapidly raise blood glucose levels.",
    "Hormonal Effects: Some studies suggest that hormones in cow’s milk (like IGF-1) may interfere with insulin function, though more research is needed.",
    "Weight Gain Risk: Regular consumption of full-fat milk or dairy-based desserts can lead to excess calorie intake, contributing to weight gain, which worsens Type 2 diabetes risk.",
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final w = size.width;
    final h = size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Milk',
          style: TextStyle(
            fontSize: w * 0.065,
            fontWeight: FontWeight.bold,
            color: Colors.green.shade800,
          ),
        ),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Padding(
          padding: EdgeInsets.all(w * 0.04),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: h * 0.015),
                child: Card(
                  elevation: 6,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(w * 0.03),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(w * 0.03),
                    child: Image.asset(
                      'assets20/images20/img_4.png',
                      height: h * 0.3,
                      width: w * 0.6,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(height: h * 0.035),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Nutrients in 1 glass',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: w * 0.05,
                    color: Colors.green.shade800,
                  ),
                ),
              ),
              SizedBox(height: h * 0.025),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(w * 0.02),
                ),
                child: DataTable(
                  columns: [
                    DataColumn(
                        label: Text('Nutrients',
                            style: TextStyle(fontSize: w * 0.04))),
                    DataColumn(
                        label: Text('Values',
                            style: TextStyle(fontSize: w * 0.04))),
                  ],
                  rows: [
                    DataRow(cells: [
                      DataCell(Text('Calories',
                          style: TextStyle(fontSize: w * 0.04))),
                      DataCell(Text('220–350 kcal',
                          style: TextStyle(fontSize: w * 0.04))),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Sugar',
                          style: TextStyle(fontSize: w * 0.04))),
                      DataCell(Text('25–35 g',
                          style: TextStyle(fontSize: w * 0.04))),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Fat',
                          style: TextStyle(fontSize: w * 0.04))),
                      DataCell(Text('6–12 g',
                          style: TextStyle(fontSize: w * 0.04))),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Carbohydrates',
                          style: TextStyle(fontSize: w * 0.04))),
                      DataCell(Text('35–45 g',
                          style: TextStyle(fontSize: w * 0.04))),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Fiber',
                          style: TextStyle(fontSize: w * 0.04))),
                      DataCell(Text('<1 g',
                          style: TextStyle(fontSize: w * 0.04))),
                    ]),
                  ],
                ),
              ),
              SizedBox(height: h * 0.035),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Effects of Milk',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: w * 0.05,
                    color: Colors.green.shade800,
                  ),
                ),
              ),
              SizedBox(height: h * 0.015),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: impacts.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(bottom: h * 0.015),
                    child: ListTile(
                      title: Text(
                        impacts[index],
                        style: TextStyle(fontSize: w * 0.04),
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
