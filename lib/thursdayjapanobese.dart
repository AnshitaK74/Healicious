import 'package:flutter/material.dart';

class thursdayjapanobese extends StatefulWidget {
  const thursdayjapanobese({super.key});

  @override
  State<thursdayjapanobese> createState() => _thursdayjapanobeseState();
}

class _thursdayjapanobeseState extends State<thursdayjapanobese> {
  final List<String> breakfast = [
    "1 bowl of Tofu Scramble",
    "Calories: 180 kcal",
    "Protein: 18 g",
    "Carbs: 3 g",
    "Fat: 12 g",
    "Fiber: 2 g",
    " ½ bowl of Boiled Edamame",
    "Calories: 110 kcal",
    "Protein: 11 g",
    "Fat: 5 g",
    "Fiber: 4 g",
    "1 glass of Fresh Cucumber-Carrot Juice",
    "Calories: 35 kcal",
    "Protein: 1 g",
    "Carbs: 7 g",
    "Fat: 0 g",
    "Fiber: 1 g",
  ];

  final List<String> lunch = [
    "100 g of Grilled Salmon",
    "Calories: 180–200 kcal",
    "Protein: 22 g",
    "Carbs: 0 g",
    "Fat: 10 g",
    "Fiber: 0 g",
    "1 bowl steamed rice",
    "Calories: 100 kcal",
    "Carbs: 22 g",
    "Protein: 2 g",
    "Fat: 0 g",
    "Fiber: 1 g",
    "1 bowl of Steamed Broccoli with Soy Sauce",
    "Calories: 50 kcal",
    "Protein: 4 g",
    "Carbs: 8 g",
    "Fat: 1 g",
    "Fiber: 4 g",
  ];

  final List<String> dinner = [
    "1 large bowl of Chicken & Vegetable Hotpot",
    "Calories: 220 kcal",
    "Protein: 25 g",
    "Carbs: 10 g",
    "Fat: 8 g",
    "Fiber: 3 g",
  ];

  bool isFoodItem(String text) {
    return !text.contains(':') && !text.toLowerCase().contains("calories");
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Thursday',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: screenWidth * 0.08,
            color: Colors.green.shade800,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(screenWidth * 0.025),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'BREAKFAST',
                  style: TextStyle(
                    fontSize: screenWidth * 0.05,
                    fontWeight: FontWeight.normal,
                    color: Colors.green.shade800,
                  ),
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
                        'assets5/images5/natto.jpeg',
                        height: screenHeight * 0.25,
                        width: screenWidth * 0.4,
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
                            fontSize: screenWidth * 0.04,
                            color: isFoodItem(breakfast[index])
                                ? Colors.green.shade600
                                : Colors.black,
                            fontWeight: isFoodItem(breakfast[index])
                                ? FontWeight.bold
                                : FontWeight.normal,
                          ),
                        ),
                      );
                    },
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'LUNCH',
                      style: TextStyle(
                        color: Colors.green.shade800,
                        fontWeight: FontWeight.normal,
                        fontSize: screenWidth * 0.05,
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
                              'assets5/images5/kimchi2.jpg',
                              height: screenHeight * 0.25,
                              width: screenWidth * 0.4,
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
                            fontSize: screenWidth * 0.04,
                            color: isFoodItem(lunch[index])
                                ? Colors.green.shade600
                                : Colors.black,
                            fontWeight: isFoodItem(lunch[index])
                                ? FontWeight.bold
                                : FontWeight.normal,
                          ),
                        ),
                      );
                    },
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'DINNER',
                      style: TextStyle(
                        color: Colors.green.shade800,
                        fontWeight: FontWeight.normal,
                        fontSize: screenWidth * 0.05,
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
                              'assets5/images5/adira.jpg',
                              height: screenHeight * 0.25,
                              width: screenWidth * 0.4,
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
                            fontSize: screenWidth * 0.04,
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
