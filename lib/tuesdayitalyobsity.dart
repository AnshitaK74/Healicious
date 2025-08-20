import 'package:flutter/material.dart';

class tuessdayItalianObesityy extends StatefulWidget {
  const tuessdayItalianObesityy({super.key});

  @override
  State<tuessdayItalianObesityy> createState() => _tuessdayItalianObesityyState();
}

class _tuessdayItalianObesityyState extends State<tuessdayItalianObesityy> {
  final List<String> breakfast = [
    "Ricotta Cheese with Berries and Almonds",
    "Calories: 280 kcal",
    "Proteins: 14g",
    "Carbohydrates: 10g",
    "Fats: 20g",
    "Fibre: 3g",
    "Herbal Tea",
    "Calories: 2 kcal",
  ];

  final List<String> lunch = [
    "Grilled Shrimp with Garlic and Olive Oil",
    "Calories: 250 kcal",
    "Protein: 30g",
    "Carbohydrates: 5g",
    "Fats: 15g",
    "Fibre: 2g",
    "Cauliflower Rice",
    "Calories: 50 kcal",
    "Protein: 2g",
    "Carbohydrates: 10g",
    "Fats: 2g",
    "Fibre: 4g",
    "Mixed Greens with Balsamic Vinegar",
    "Calories: 80 kcal",
    "Fats: 7g",
    "Fibre: 3g",
  ];

  final List<String> dinner = [
    "Baked Eggplant Parmesan (light version)",
    "Calories: 350 kcal",
    "Protein: 15g",
    "Carbohydrates: 25g",
    "Fats: 18g",
    "Fibre: 6g",
    "Steamed Broccoli with Olive Oil",
    "Calories: 120 kcal",
    "Carbohydrates: 10g",
    "Fats: 9g",
    "Fibre: 5g",
    "Tomato Basil Soup (light)",
    "Calories: 150 kcal",
    "Carbohydrates: 15g",
    "Fats: 8g",
    "Fibre: 3g",
  ];

  bool isFoodItem(String text) {
    return !text.contains(':') && !text.toLowerCase().contains("calories");
  }

  @override
  Widget build(BuildContext context) {
    final screensize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Thursday',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: screensize.width * 0.08,
              color: Colors.green.shade800),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // BREAKFAST
            Padding(
              padding: EdgeInsets.all(10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'BREAKFAST ',
                  style: TextStyle(
                      fontSize: screensize.width * 0.05,
                      fontWeight: FontWeight.normal,
                      color: Colors.green.shade800),
                ),
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
                        'assets11/images11/q.jpeg',
                        height: screensize.height * 0.25,
                        width: screensize.width * 0.45,
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
                        title: Text(
                          breakfast[index],
                          style: TextStyle(
                            color: isFoodItem(breakfast[index])
                                ? Colors.green.shade700
                                : Colors.black,
                            fontWeight: isFoodItem(breakfast[index])
                                ? FontWeight.bold
                                : FontWeight.normal,
                          ),
                        ),
                      );
                    },
                  ),

                  // LUNCH
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Transform.translate(
                      offset: Offset(16, 0),
                      child: Text(
                        'LUNCH ',
                        style: TextStyle(
                            color: Colors.green.shade800,
                            fontWeight: FontWeight.normal,
                            fontSize: screensize.width * 0.05),
                      ),
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
                              'assets11/images11/g.jpeg',
                              height: screensize.height * 0.25,
                              width: screensize.width * 0.45,
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
                        title: Text(
                          lunch[index],
                          style: TextStyle(
                            color: isFoodItem(lunch[index])
                                ? Colors.green.shade700
                                : Colors.black,
                            fontWeight: isFoodItem(lunch[index])
                                ? FontWeight.bold
                                : FontWeight.normal,
                          ),
                        ),
                      );
                    },
                  ),

                  // DINNER
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Transform.translate(
                      offset: Offset(16, 0),
                      child: Text(
                        'DINNER ',
                        style: TextStyle(
                            color: Colors.green.shade800,
                            fontWeight: FontWeight.normal,
                            fontSize: screensize.width * 0.05),
                      ),
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
                              'assets11/images11/j.jpg',
                              height: screensize.height * 0.25,
                              width: screensize.width * 0.45,
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
                        title: Text(
                          dinner[index],
                          style: TextStyle(
                            color: isFoodItem(dinner[index])
                                ? Colors.green.shade600
                                : Colors.black,
                            fontWeight: isFoodItem(dinner[index])
                                ? FontWeight.bold
                                : FontWeight.normal,
                          ),
                        ),
                      );
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
