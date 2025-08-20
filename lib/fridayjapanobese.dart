import 'package:flutter/material.dart';

class fridayjapanobese extends StatefulWidget {
  const fridayjapanobese({super.key});

  @override
  State<fridayjapanobese> createState() => _fridayjapanobeseState();
}

class _fridayjapanobeseState extends State<fridayjapanobese> {
  final List<String> breakfast = [
    "2 tablespoons of Natto",
    "Calories: 90 kcal",
    "Protein: 8 g",
    "Carbs: 5 g",
    "Fat: 5 g",
    "½ bowl of Steamed White Rice",
    "Calories: 110 kcal",
    "Protein: 2 g",
    "Carbs: 25 g",
    "Fat: 0 g",
    "Fiber: 1 g",
    "1 cup of Green Tea",
    "Calories: 0 kcal",
    "Protein: 0 g",
    "Carbs: 0 g",
    "Fat: 0 g",
  ];

  final List<String> lunch = [
    "1 bowl of buckwheat Soba Noodles",
    "Calories: 210 kcal",
    "Protein: 8 g",
    "Carbs: 35 g",
    "Fat: 1 g",
    "Fiber: 3 g",
    "1 small bowl of Stir-Fried Tofu with Greens",
    "Calories: 150 kcal",
    "Protein: 14 g",
    "Carbs: 4 g",
    "Fat: 9 g",
    "Fiber: 2 g",
  ];

  final List<String> dinner = [
    "1 large bowl of Chicken-Egg Donburi",
    "Calories: 400–420 kcal",
    "Protein: 35–38 g",
    "Carbs: 20–25 g",
    "Fat: 18 g",
    "Fiber: 2 g",
  ];

  bool isFoodItem(String text) {
    return !text.contains(':') &&
        !text.toLowerCase().contains("calories");
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Friday',
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
              padding: EdgeInsets.all(screenWidth * 0.04),
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
            )
          ],
        ),
      ),
    );
  }
}
