import 'package:flutter/material.dart';

class saturdaygutindiand extends StatefulWidget {
  const saturdaygutindiand({super.key});

  @override
  State<saturdaygutindiand> createState() => _saturdaygutindiandState();
}

class _saturdaygutindiandState extends State<saturdaygutindiand> {
  final List<String> breakfast = [
    "1 bowl poha with peanuts and curry leaves",
    "Calories: 250 kcal",
    "Protein: 5 g",
    "Carbohydrates: 35 g",
    "Fibre: 3 g",
    "Fats: 8 g",

    "1 cup ajwain infused warm water",
    "Calories: 4 kcal",
    "Protein: 0 g",
    "Carbohydrates: 1 g",
    "Fats: 0 g",
    "Fibre: 0 g",
  ];

  final List<String> lunch = [
    "1 bowl bottle gourd curry (lauki)",
    "Calories: 90 kcal",
    "Protein: 3 g",
    "Carbs: 12 g",
    "Fats: 3 g",
    "Fibre: 3 g",

    "1 medium-sized bajra roti",
    "Calories: 120 kcal",
    "Protein: 4 g",
    "Carbs: 18 g",
    "Fats: 2.5 g",
    "Fibre: 3 g",

    "1 glass cumin-mint buttermilk",
    "Calories: 35 kcal",
    "Protein: 2 g",
    "Carbs: 4 g",
    "Fats: 1 g",
    "Fibre: 0 g",
  ];

  final List<String> dinner = [
    "1 bowl khichdi with moong dal and vegetables",
    "Calories: 200 kcal",
    "Protein: 8 g",
    "Carbs: 30 g",
    "Fats: 4 g",
    "Fibre: 5 g",

    "1 bowl mixed cucumber and beetroot salad",
    "Calories: 60 kcal",
    "Protein: 2 g",
    "Carbs: 10 g",
    "Fats: 1 g",
    "Fibre: 3 g",

    "1 cup tulsi-ginger herbal tea",
    "Calories: 3 kcal",
    "Protein: 0 g",
    "Carbs: 0.5 g",
    "Fats: 0 g",
    "Fibre: 0 g",
  ];

  bool isFoodItem(String text) {
    return !text.contains(':') && !text.toLowerCase().contains("calories");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Saturday',
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
                  'assets2/images2/mit.jpeg',
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
                  'assets2/images2/pakora.jpeg',
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
