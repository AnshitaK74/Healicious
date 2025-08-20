import 'package:flutter/material.dart';

class wednesdayjapanobese extends StatefulWidget {
  const wednesdayjapanobese({super.key});

  @override
  State<wednesdayjapanobese> createState() => _wednesdayjapanobeseState();
}

class _wednesdayjapanobeseState extends State<wednesdayjapanobese> {
  final List<String> breakfast = [
    "Tamago Yaki(2 eggs)",
    "Calories: 160 kcal",
    "Protein: 13 g",
    "Carbs: 1 g",
    "Fat: 12 g",
    "Fiber: 0 g",
    "1 bowl  Miso Soup with Tofu and Wakame",
    "Calories: 70 kcal",
    "Protein: 6 g",
    "Carbs: 4 g",
    "Fat: 3 g",
    "Fiber: 1 g",
    "1 glass of Fresh Carrot-Apple Juice",
    "Calories: 60–70 kcal",
    "Carbs: 15–17 g",
    "Protein: 0.5 g",
    "Fat: 0 g",
    "Fiber: 1 g",
  ];

  final List<String> lunch = [
    "1 bowl of stir-Fried Tofu with Vegetables",
    "Calories: 180 kcal",
    "Carbs: 10 g",
    "Protein: 12 g",
    "Fat: 10 g",
    "Fiber: 3 g",
    "½ cup Steamed White Rice",
    "Calories: 100 kcal",
    "Carbs: 22 g",
    "Protein: 2 g",
    "Fat: 0 g",
    "Fiber: 1 g",
    "1 small bowl of Edamame salad",
    "Calories: 110 kcal",
    "Carbs: 10 g",
    "Fat: 4 g",
    "Fiber: 4 g",
  ];

  final List<String> dinner = [
    "1 large bowl ofVegetable Tofu Hotpot (Vegetable Tofu Hotpot)",
    "Calories: 180–200 kcal",
    "Carbs: 15–18 g",
    "Protein: 14 g",
    "Fat: 7 g",
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
          'Wednesday',
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
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'assets5/images5/zosui.jpg',
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
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets5/images5/kk.jpeg',
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
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets5/images5/unagi.jpeg',
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
                                ? Colors.green.shade700
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
