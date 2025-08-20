import 'package:flutter/material.dart';

class mondayindiagut extends StatefulWidget {
  const mondayindiagut({super.key});

  @override
  State<mondayindiagut> createState() => _mondayindiagutState();
}

class _mondayindiagutState extends State<mondayindiagut> {
  final List<String> breakfast = [
    "1 bowl of Daliya (broken wheat porridge) with vegetables",
    "Calories: 150 kcal",
    "Protein: 5 g",
    "Carbohydrates: 28 g",
    "Fibre: 4 g",
    "Fats: 3 g",

    "1 cup of fennel-infused herbal tea",
    "Calories: 4 kcal",
    "Protein: 0 g",
    "Carbohydrates: 1 g",
    "Fats: 0 g",
    "Fiber: 0 g",
  ];

  final List<String> lunch = [
    "1 medium bowl of Red rice + Green moong dal + lauki (bottle gourd)",
    "Calories: 260 kcal",
    "Protein: 10 g",
    "Carbs: 35 g",
    "Fats: 6 g",
    "Fiber: 5 g",

    "1 small bowl of plain curd (probiotic)",
    "Calories: 80 kcal",
    "Protein: 4 g",
    "Carbs: 6 g",
    "Fats: 4 g",
    "Fiber: 0 g",

    "½ plate raw papaya & cucumber salad with lemon and cumin",
    "Calories: 50 kcal",
    "Protein: 1 g",
    "Carbs: 9 g",
    "Fats: 1.5 g",
    "Fiber: 3.5 g",
  ];

  final List<String> dinner = [
    "1 bowl of lightly sautéed spinach and tofu with garlic",
    "Calories: 180 kcal",
    "Protein: 11 g",
    "Carbs: 7 g",
    "Fat: 11 g",
    "Fiber: 4 g",

    "1 phulka (no ghee)",
    "Calories: 90 kcal",
    "Carbs: 18 g",
    "Fat: 1.5 g",
    "Fiber: 2 g",

    "1 small bowl of steamed bottle gourd with cumin",
    "Calories: 60 kcal",
    "Protein: 2 g",
    "Carbs: 8 g",
    "Fat: 2 g",
    "Fiber: 3 g",
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
        child: Column(
          children: [
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
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets2/images2/kachori.jpg',
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
                }),
            Align(
              alignment: Alignment.centerLeft,
              child: Transform.translate(
                offset: Offset(16, 0),
                child: Text('LUNCH',
                    style: TextStyle(
                        color: Colors.green.shade800,
                        fontWeight: FontWeight.normal,
                        fontSize: 20)),
              ),
            ),
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets5/images5/eggroll.jpeg',
                  height: 200,
                  width: 150,
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
                        color: isFoodItem(lunch[index])
                            ? Colors.green.shade700
                            : Colors.black,
                        fontWeight: isFoodItem(lunch[index])
                            ? FontWeight.bold
                            : FontWeight.normal,
                      ),
                    ),
                  );
                }),
            Align(
              alignment: Alignment.centerLeft,
              child: Transform.translate(
                offset: Offset(16, 0),
                child: Text('DINNER',
                    style: TextStyle(
                        color: Colors.green.shade800,
                        fontWeight: FontWeight.normal,
                        fontSize: 20)),
              ),
            ),
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets2/images2/ji.jpeg',
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
                  return ListTile(
                    title: Text(
                      dinner[index],
                      style: TextStyle(
                        color: isFoodItem(dinner[index])
                            ? Colors.green.shade700
                            : Colors.black,
                        fontWeight: isFoodItem(dinner[index])
                            ? FontWeight.bold
                            : FontWeight.normal,
                      ),
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
