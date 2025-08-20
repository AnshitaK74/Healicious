import 'package:flutter/material.dart';

class WednesdayMexicanObesity extends StatefulWidget {
  const WednesdayMexicanObesity({super.key});

  @override
  State<WednesdayMexicanObesity> createState() => _WednesdayMexicanObesityState();
}

class _WednesdayMexicanObesityState extends State<WednesdayMexicanObesity> {
  final List<String> breakfast = [
    "1 Corn Tortilla with scrambled egg whites and salsa\n",
        "Calories: 150 kcal\n",
        "Protein: 10 g\n",
        "Carbohydrates: 12 g\n",
        "Fiber: 2 g\n",
        "Fats: 6 g",

    "1 cup of unsweetened hibiscus tea\n",
        "Calories: 0 kcal\n",
        "Protein: 0 g\n",
        "Carbohydrates: 0 g\n",
        "Fiber: 0 g\n",
        "Fats: 0 g",
  ];

  final List<String> lunch = [
    "Chicken Fajita Bowl (grilled chicken, peppers, onions, lettuce – no tortilla)\n",
        "Calories: 280 kcal\n",
        "Protein: 24 g\n",
        "Carbohydrates: 10 g\n",
        "Fiber: 3 g\n",
        "Fats: 15 g",

    "½ avocado with lime\n",
        "Calories: 120 kcal\n",
        "Protein: 1 g\n",
        "Carbohydrates: 6 g\n",
        "Fiber: 5 g\n",
        "Fats: 10 g",
  ];




  final List<String> dinner = [
    "Zucchini and black bean tacos (lettuce wrap instead of tortillas)\n",
        "Calories: 200 kcal\n",
        "Protein: 10 g\n",
        "Carbohydrates: 18 g\n",
        "Fiber: 7 g\n",
        "Fats: 8 g",

    "1 small orange\n",
        "Calories: 62 kcal\n",
        "Protein: 1 g\n",
        "Carbohydrates: 15 g\n",
        "Fiber: 3 g\n",
        "Fats: 0 g",
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
                  )),
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset('assets7/images7/bha.jpg',
                      height: 200, width: 150, fit: BoxFit.cover),
                ),
              ),
              ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: breakfast.length,
                  itemBuilder: (context, index) {
                    return ListTile(title: Text(breakfast[index],style: TextStyle(
                      color: isFoodItem(breakfast[index]) ? Colors.green.shade700 : Colors.black,
                      fontWeight: isFoodItem(breakfast[index]) ? FontWeight.bold : FontWeight.normal,

                    )));
                  }),
              Align(
                  alignment: Alignment.centerLeft,
                  child:Transform.translate(offset: Offset(16,0),
                  child: Text('LUNCH',
                      style: TextStyle(
                          color: Colors.green.shade800,
                          fontWeight: FontWeight.normal,
                          fontSize: 20))),),
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset('assets7/images7/beans.jpg',
                      height: 200, width: 150, fit: BoxFit.cover),
                ),
              ),
              ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: lunch.length,
                  itemBuilder: (context, index) {
                    return ListTile(title: Text(lunch[index],style: TextStyle(
                    color: isFoodItem(lunch[index]) ? Colors.green.shade700 : Colors.black,
                      fontWeight: isFoodItem(lunch[index]) ? FontWeight.bold : FontWeight.normal,
                    )));
                  }),
              Align(
                  alignment: Alignment.centerLeft,
                  child:Transform.translate(offset: Offset(16,0),
                  child: Text('DINNER',
                      style: TextStyle(
                          color: Colors.green.shade800,
                          fontWeight: FontWeight.normal,
                          fontSize: 20))),),
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset('assets7/images7/11.jpg',
                      height: 200, width: 150, fit: BoxFit.cover),
                ),
              ),
              ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: dinner.length,
                  itemBuilder: (context, index) {
                    return ListTile(title: Text(dinner[index],style: TextStyle(
                    color: isFoodItem(dinner[index])
                        ? Colors.green.shade600
                        : Colors.black,
                      fontWeight: isFoodItem(dinner[index])
                          ? FontWeight.bold
                          : FontWeight.normal,


                    )));
                  }),
            ])));
  }
}
