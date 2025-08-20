import 'package:flutter/material.dart';

class mondaypcos11 extends StatefulWidget {
  const mondaypcos11({super.key});

  @override
  State<mondaypcos11> createState() => _mondaypcos11State();
}

class _mondaypcos11State extends State<mondaypcos11> {
  final List<String> breakfast = [
    "Sprouts and Paneer stir fry",
    "Calories: 360 kcal",
    "Proteins: 22–25g",
    "Carbohydrates: 18–22g",
    "Fats: 22–25g",
    "Fibre: 6–8g",
    "Herbal Tea",
    "Calories: 2 kcal",
  ];

  final List<String> lunch = [
    "1 Bowl Dal (Moong)",
    "Calories: 140 kcal",
    "Protein: 10g",
    "Carbohydrates: 24g",
    "Fibre: 4g",
    "Fats: 0.8g",
    "1 cup Brown Rice",
    "Calories: 165 kcal",
    "Protein: 3.5g",
    "Carbohydrates: 34g",
    "Fibre: 1.8g",
    "Fats: 1.3g",
    "1 Bowl Tofu",
    "Calories: 150 kcal",
    "Protein: 15g",
    "Carbohydrates: 4g",
    "Fats: 9g",
    "1 Ragi Roti",
    "Calories: 120 kcal",
    "Carbohydrates: 22g",
    "Protein: 2.5g",
    "Fats: 1g",
    "Fibre: 2.5g"
  ];

  final List<String> dinner = [
    "2 Jowar Roti",
    "Calories: 200 kcal",
    "Carbohydrates: 38g",
    "Protein: 6g",
    "Fats: 2g",
    "Fibre: 6g",
    "1 Bowl Pumpkin vegetable",
    "Calories: 49 kcal",
    "Carbohydrates: 12g",
    "Protein: 2g",
    "Fats: 0.2g",
    "Fibre: 2.7g",
    "1 Bowl curd (optional)",
    "Calories: 149 kcal",
    "Carbohydrates: 11–12g",
    "Protein: 8–10g",
    "Fats: 8g",
    "Fibre: 0g"
  ];

  bool isFoodItem(String text) {
    return !text.contains(':') && !text.toLowerCase().contains("calories");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Monday',
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
              child: Text('BREAKFAST ',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      color: Colors.green.shade800)),
            ),
          ),
          sectionTitle('BREAKFAST'),
          buildMealCardWithList(
              imagePath: 'assets2/images2/images-18.jpeg',
              mealList: breakfast),
          sectionTitle('LUNCH'),
          buildMealCardWithList(
              imagePath: 'assets2/images2/tofu.jpg', mealList: lunch),
          sectionTitle('DINNER'),
          buildMealCardWithList(
              imagePath: 'assets2/images2/curd.jpeg', mealList: dinner),
        ]),
      ),
    );
  }

  Widget sectionTitle(String text) {
    return Padding(
      padding: EdgeInsets.only(left: 16, top: 20, bottom: 6),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(text,
            style: TextStyle(
                color: Colors.green.shade800,
                fontWeight: FontWeight.normal,
                fontSize: 20)),
      ),
    );
  }

  Widget buildMealCardWithList({
    required String imagePath,
    required List<String> mealList,
  }) {
    return Column(
      children: [
        Card(
          elevation: 4,
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              imagePath,
              height: 200,
              width: 150,
              fit: BoxFit.cover,
            ),
          ),
        ),
        ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: dinner.length,
            itemBuilder: (context, index) {
              return Padding(padding:EdgeInsets.all(2),
                  child:  ListTile(
                      title: Text(dinner[index],
                          style: TextStyle(
                            color: isFoodItem(dinner[index])
                                ? Colors.green.shade600
                                : Colors.black,
                            fontWeight: isFoodItem(dinner[index])
                                ? FontWeight.bold
                                : FontWeight.normal,


                          )
                      )
                  )
              );
            }
        )
      ],
    );
  }
}
