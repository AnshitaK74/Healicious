import 'package:flutter/material.dart';

class wednesdaydiabetesjapan extends StatefulWidget {
  const wednesdaydiabetesjapan({super.key});

  @override
  State<wednesdaydiabetesjapan> createState() => _wednesdaydiabetesjapanState();
}

class _wednesdaydiabetesjapanState extends State<wednesdaydiabetesjapan> {
  final List<String> breakfast = [
    "1 bowl of Natto (fermented soybeans)",
        "Calories: 90 kcal",
        "Protein: 8 g",
        "Carbs: 6 g",
        "Fat: 5 g",
        "Fiber: 3 g",

    "1 slice of Whole Grain Toast",
        "Calories: 70 kcal",
        "Protein: 3 g",
        "Carbs: 12 g",
        "Fat: 1 g",
        "Fiber: 2 g",

    "½ Apple",
        "Calories: 48 kcal",
        "Protein: 0.2 g",
        "Carbs: 13 g",
        "Fat: 0.1 g",
        "Fiber: 2.2 g",
  ];

  final List<String> lunch = [
    "1 bowl of Grilled Fish (e.g., Mackerel)",
        "Calories: 190 kcal",
        "Protein: 20 g",
        "Carbs: 0 g",
        "Fat: 12 g",
        "Fiber: 0 g",

    "1 bowl of Mixed Vegetable Soup",
        "Calories: 60 kcal",
        "Protein: 3 g",
        "Carbs: 8 g",
        "Fat: 1 g",
        "Fiber: 2.5 g",

    "½ bowl of Quinoa",
        "Calories: 111 kcal",
        "Protein: 4 g",
        "Carbs: 19 g",
        "Fat: 2 g",
        "Fiber: 2.6 g",
  ];

  final List<String> dinner = [
    "1 bowl of Zucchini Tofu Stir-Fry",
        "Calories: 170 kcal",
        "Protein: 12 g",
        "Carbs: 8 g",
        "Fat: 10 g",
        "Fiber: 3 g",

    "1 bowl of Konjac Rice",
        "Calories: 15 kcal",
        "Protein: 0 g",
        "Carbs: 3 g",
        "Fat: 0 g",
        "Fiber: 2 g",
  ];

  bool isFoodItem(String text) {
    return !text.contains(':') && !text.toLowerCase().contains("calories");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Wednesday',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                  color: Colors.green.shade800)),
        ),
        body: SingleChildScrollView(
            child: Column(children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('BREAKFAST',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                          color: Colors.green.shade800)),
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Card(
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'assets5/images5/byy.jpeg',
                          height: 200,
                          width: 150,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: breakfast.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            title: Text(breakfast[index],
                              style: TextStyle(
                                color: isFoodItem(breakfast[index]) ? Colors.green.shade700 : Colors.black,
                                fontWeight: isFoodItem(breakfast[index]) ? FontWeight.bold : FontWeight.normal,
                              ),),
                          );
                        }),
                    Align(
                      alignment: Alignment.centerLeft,
                      child:Transform.translate(offset:Offset(16,0),
                      child: Text('LUNCH',
                          style: TextStyle(
                              color: Colors.green.shade800,
                              fontWeight: FontWeight.normal,
                              fontSize: 20)),
                    ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Card(
                            elevation: 4,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                'assets5/images5/broth.jpeg',
                                height: 200,
                                width: 150,
                                fit: BoxFit.cover,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: lunch.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            title: Text(lunch[index],
                              style: TextStyle(
                                color: isFoodItem(lunch[index]) ? Colors.green.shade700 : Colors.black,
                                fontWeight: isFoodItem(lunch[index]) ? FontWeight.bold : FontWeight.normal,
                              ),),
                          );
                        }),
                    Align(
                      alignment: Alignment.centerLeft,
                      child:Transform.translate(offset:Offset(16,0),
                      child: Text('DINNER',
                          style: TextStyle(
                              color: Colors.green.shade800,
                              fontWeight: FontWeight.normal,
                              fontSize: 20)),
                    ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Card(
                            elevation: 4,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                'assets4/img4/anda.jpg',
                                height: 200,
                                width: 150,
                                fit: BoxFit.cover,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: dinner.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            title: Text(dinner[index],
                              style: TextStyle(
                                color: isFoodItem(dinner[index]) ? Colors.green.shade700 : Colors.black,
                                fontWeight: isFoodItem(dinner[index]) ? FontWeight.bold : FontWeight.normal,
                              ),),
                          );
                        })
                  ],
                ),
              )
            ])));
  }
}
