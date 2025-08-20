import 'package:flutter/material.dart';

class tuesdayjapanobese extends StatefulWidget {
  const tuesdayjapanobese({super.key});

  @override
  State<tuesdayjapanobese> createState() => _tuesdayjapanobeseState();
}

class _tuesdayjapanobeseState extends State<tuesdayjapanobese> {
  final List<String> breakfast = [
    "1 bowl of okayu",
    "Calories: 150–170 kcal",
    "Carbs: 30–35 g",
    "Protein: 4–5 g",
    "Fat: 4–6 g",
    "Fiber: 4 g",
    "1 orange",
    "Calories: 60 kcal",
    "Carbs: 15 g",
    "Protein: 1 g",
    "Fat: 0 g",
    "Fiber: 3 g",
  ];

  final List<String> lunch = [
    "1 piece of chicken katsu",
    "Calories: 220–240 kcal",
    "Carbs: 15 g",
    "Protein: 30 g",
    "Fat: 8–10 g",
    "Fiber: 1 g",
    "1 bowl of cabbage salad",
    "Calories: 50–60 kcal",
    "Carbs: 8–10 g",
    "Protein: 1 g",
    "Fat: 3–4 g",
    "Fiber: 3–4 g",
    "1 bowl steamed rice",
    "Calories: 100 kcal",
    "Carbs: 22 g",
    "Protein: 2 g",
    "Fat: 0 g",
    "Fiber: 1 g",
  ];

  final List<String> dinner = [
    "4 medium-sized Baked Shrimp Tempura",
    "Calories: 140–160 kcal",
    "Carbs: 14 g",
    "Protein: 16 g",
    "Fat: 4–6 g",
    "Fiber: 1 g",
    "1 bowl of miso soup",
    "Calories: 80 kcal",
    "Carbs: 8 g",
    "Protein: 8 g",
    "Fat: 3 g",
    "Fiber: 2 g",
    "1 bowl of steamed vegetables",
    "Calories: 60 kcal",
    "Carbs: 10 g",
    "Protein: 3 g",
    "Fat: 1 g",
    "Fiber: 4 g",
  ];

  bool isFoodItem(String text) {
    return !text.contains(':') && !text.toLowerCase().contains("calories");
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Tuesday',
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
                      borderRadius: BorderRadius.circular(screenWidth * 0.025),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(screenWidth * 0.025),
                      child: Image.asset(
                        'assets5/images5/ad.jpeg',
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
                            fontSize: screenWidth * 0.045,
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
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Transform.translate(
                      offset: Offset(screenWidth * 0.04, 0),
                      child: Text(
                        'LUNCH',
                        style: TextStyle(
                          color: Colors.green.shade800,
                          fontWeight: FontWeight.normal,
                          fontSize: screenWidth * 0.05,
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
                            borderRadius:
                            BorderRadius.circular(screenWidth * 0.025),
                          ),
                          child: ClipRRect(
                            borderRadius:
                            BorderRadius.circular(screenWidth * 0.025),
                            child: Image.asset(
                              'assets5/images5/broth.jpeg',
                              height: screenHeight * 0.25,
                              width: screenWidth * 0.4,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
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
                            fontSize: screenWidth * 0.045,
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
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Transform.translate(
                      offset: Offset(screenWidth * 0.04, 0),
                      child: Text(
                        'DINNER',
                        style: TextStyle(
                          color: Colors.green.shade800,
                          fontWeight: FontWeight.normal,
                          fontSize: screenWidth * 0.05,
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
                            borderRadius:
                            BorderRadius.circular(screenWidth * 0.025),
                          ),
                          child: ClipRRect(
                            borderRadius:
                            BorderRadius.circular(screenWidth * 0.025),
                            child: Image.asset(
                              'assets5/images5/no.jpeg',
                              height: screenHeight * 0.25,
                              width: screenWidth * 0.4,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
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
                            fontSize: screenWidth * 0.045,
                            color: isFoodItem(dinner[index])
                                ? Colors.green.shade700
                                : Colors.black,
                            fontWeight: isFoodItem(dinner[index])
                                ? FontWeight.bold
                                : FontWeight.normal,
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
