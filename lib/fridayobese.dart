import 'package:flutter/material.dart';

class FridayObese extends StatefulWidget {
  const FridayObese({super.key});

  @override
  State<FridayObese> createState() => _FridayObeseState();
}

class _FridayObeseState extends State<FridayObese> {
  final List<String> breakfast = [
    "1 Glass juice (any seasonal fruit (apple, grapes), 1 tomato, some coriander, half ginger, 1/2 lemon, 1/2 tbsp black salt, ice cubes and water)",
    "Calories:25-30 kcal",
    "Carbohydrates:6-7 g",
    "Protein:0.5 g",
    "Fat:0 g",
    "Fiber:1-2 g",

    "2 idli sambhar and chutney",
    "Calories:280-320 kcal",
    "Carbohydrates:35-40 g",
    "Protein:10-12 g",
    "Fat:10-12 g",
    "Fiber:4-5 g",

    "1 small Bowl Curd with Chia Seed",
    "Calories:100-120 kcal",
    "Carbohydrates:7-10 g",
    "Protein:6-7 g",
    "Fat:4-5 g",
    "Fiber:4-5 g"
  ];

  final List<String> lunch = [
    "1 Bowl Kala Chana",
    "Calories:320-250 kcal",
    "Carbohydrates:35–40 g",
    "Protein:12-15 g",
    "Fat:2-4 g",
    "Fiber:8-10 g",

    "3-4 Makka Puri (made in ghee)",
    "Calories:250-300 kcal",
    "Carbohydrates:35–40 g",
    "Protein:3-4 g",
    "Fat:15-20 g",
    "Fiber:3-4 g"
  ];

  final List<String> dinner = [
    "1 Bowl Soya Chunks Vegetable",
    "Calories:180-220 kcal",
    "Carbohydrates:10-12 g",
    "Protein:15-20 g",
    "Fat:7-10 g",
    "Fiber:5-6 g",

    "2 MultiGrain Roti",
    "Calories:250–300 kcal",
    "Carbohydrates:45–50 g",
    "Protein:8–10 g",
    "Fat:4–6 g",
    "Fiber:6–8 g"
  ];

  bool isFoodItem(String text) {
    return !text.contains(':') &&
        !text.toLowerCase().contains("calories") &&
        !text.toLowerCase().contains("carbohydrates") &&
        !text.toLowerCase().contains("protein") &&
        !text.toLowerCase().contains("fat") &&
        !text.toLowerCase().contains("fiber") &&
        !text.toLowerCase().contains("calcium");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Friday',
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
                child: Image.asset('assets4/img4/anda.jpg',
                    height: 200, width: 150, fit: BoxFit.cover),
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
                child: Image.asset('assets4/img4/chana.jpg',
                    height: 200, width: 150, fit: BoxFit.cover),
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
                child: Image.asset('assets4/img4/sa.jpg',
                    height: 200, width: 150, fit: BoxFit.cover),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: dinner.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.all(2),
                  child: ListTile(
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
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
