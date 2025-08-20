import 'package:flutter/material.dart';

class saturdayjapanobese extends StatefulWidget {
  const saturdayjapanobese({super.key});

  @override
  State<saturdayjapanobese> createState() => _saturdayjapanobeseState();
}

class _saturdayjapanobeseState extends State<saturdayjapanobese> {
  final List<String> breakfast = [
    " 1 plate of Tamago Yaki",
    "Calories: 160 kcal",
    "Protein: 13 g",
    "Carbs: 2 g",
    "Fat: 11 g",
    "1 bowl of onagiri",
    "Calories: 130 kcal",
    "Protein: 3 g",
    "Carbs: 26 g",
    "Fat: 0.5 g",
    "1 small nashi",
    "Calories: 50 kcal",
    "Carbs: 13 g",
    "Fiber: 2 g",
  ];

  final List<String> lunch = [
    "1 bowl of Chirashi Sushi ",
    "Calories: 280 kcal",
    "Protein: 15 g",
    "Carbs: 38 g",
    "Fat: 7 g",
    "Fiber: 2 g",
    "2–3 slices of  Pickled Daikon",
    "Calories: 10 kcal",
    "Protein: 0.3 g",
    "Carbs: 2 g",
    "Fat: 0 g",
    "Fiber: 0.5 g",
    " ½ bowl of Wakame Cucumber Salad",
    "Calories: 50 kcal",
    "Protein: 2 g",
    "Carbs: 4 g",
    "Fat: 3 g",
    "Fiber: 1 g",
  ];

  final List<String> dinner = [
    "1 large bowl of Yose Nabe",
    "Calories: 350 kcal",
    "Protein: 25 g",
    "Carbs: 25 g",
    "Fat: 15 g",
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
          'Saturday',
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
            Column(
              children: [
                Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(screenWidth * 0.025),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(screenWidth * 0.025),
                    child: Image.asset(
                      'assets5/images5/klo.jpeg',
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
                Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(screenWidth * 0.025),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(screenWidth * 0.025),
                    child: Image.asset(
                      'assets5/images5/byy.jpeg',
                      height: screenHeight * 0.25,
                      width: screenWidth * 0.4,
                      fit: BoxFit.cover,
                    ),
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
                Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(screenWidth * 0.025),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(screenWidth * 0.025),
                    child: Image.asset(
                      'assets5/images5/nabe.jpeg',
                      height: screenHeight * 0.25,
                      width: screenWidth * 0.4,
                      fit: BoxFit.cover,
                    ),
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
          ],
        ),
      ),
    );
  }
}
