import 'package:flutter/material.dart';

class mondaypcosthai extends StatefulWidget {
  const mondaypcosthai({super.key});

  @override
  State<mondaypcosthai> createState() => _mondaypcosthaiState();
}

class _mondaypcosthaiState extends State<mondaypcosthai> {
  final List<String> breakfast = [
    "1 bowl of Thai mango sticky rice with coconut milk (small serving)",
    "Calories: 250 kcal",
    "Carbohydrates: 40 g",
    "Protein: 4 g",
    "Fats: 10 g",
    "Fibre: 2 g",
    "1 cup green tea",
    "Calories: 2 kcal",
    "Carbohydrates: 0.5 g",
    "Protein: 0 g",
    "Fats: 0 g",
    "Fibre: 0 g",
    "1 small banana",
    "Calories: 90 kcal",
    "Carbohydrates: 23 g",
    "Protein: 1 g",
    "Fats: 0 g",
    "Fibre: 2.5 g"
  ];

  final List<String> lunch = [
    "1 bowl of Thai chicken curry with vegetables (using coconut milk)",
    "Calories: 400 kcal",
    "Carbohydrates: 30 g",
    "Protein: 30 g",
    "Fats: 25 g",
    "Fibre: 5 g",
    "1 small serving of brown rice",
    "Calories: 110 kcal",
    "Carbohydrates: 23 g",
    "Protein: 2 g",
    "Fats: 1 g",
    "Fibre: 2 g",
    "1 cup papaya salad (Som Tam)",
    "Calories: 150 kcal",
    "Carbohydrates: 20 g",
    "Protein: 5 g",
    "Fats: 7 g",
    "Fibre: 3 g"
  ];

  final List<String> dinner = [
    "1 bowl of Thai grilled fish with lime and herbs",
    "Calories: 250 kcal",
    "Carbohydrates: 5 g",
    "Protein: 30 g",
    "Fats: 12 g",
    "Fibre: 1 g",
    "1 small serving of steamed vegetables (broccoli, zucchini)",
    "Calories: 100 kcal",
    "Carbohydrates: 15 g",
    "Protein: 5 g",
    "Fats: 2 g",
    "Fibre: 4 g"
  ];

  bool isFoodItem(String text) {
    return !text.contains(':') && !text.toLowerCase().contains("calories");
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final imageWidth = screenWidth * 0.4;
    final imageHeight = screenHeight * 0.25;
    final padding = screenWidth * 0.04;
    final fontSizeTitle = screenWidth * 0.05;
    final fontSizeText = screenWidth * 0.04;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Monday',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: fontSizeTitle + 10,
              color: Colors.green.shade800),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(padding),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text('BREAKFAST',
                    style: TextStyle(
                        fontSize: fontSizeTitle,
                        fontWeight: FontWeight.normal,
                        color: Colors.green.shade800)),
              ),
            ),
            Column(children: [
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'assets20/images20/b.jpeg',
                    height: imageHeight,
                    width: imageWidth,
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
                      title: Text(breakfast[index],
                          style: TextStyle(
                            fontSize: fontSizeText,
                            color: isFoodItem(breakfast[index])
                                ? Colors.green.shade700
                                : Colors.black,
                            fontWeight: isFoodItem(breakfast[index])
                                ? FontWeight.bold
                                : FontWeight.normal,
                          )),
                    );
                  }),
              Align(
                alignment: Alignment.centerLeft,
                child: Transform.translate(
                  offset: Offset(padding, 0),
                  child: Text('LUNCH',
                      style: TextStyle(
                          color: Colors.green.shade800,
                          fontWeight: FontWeight.normal,
                          fontSize: fontSizeTitle)),
                ),
              ),
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'assets20/images20/g.jpeg',
                    height: imageHeight,
                    width: imageWidth,
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
                      title: Text(lunch[index],
                          style: TextStyle(
                            fontSize: fontSizeText,
                            color: isFoodItem(lunch[index])
                                ? Colors.green.shade700
                                : Colors.black,
                            fontWeight: isFoodItem(lunch[index])
                                ? FontWeight.bold
                                : FontWeight.normal,
                          )),
                    );
                  }),
              Align(
                alignment: Alignment.centerLeft,
                child: Transform.translate(
                  offset: Offset(padding, 0),
                  child: Text('DINNER',
                      style: TextStyle(
                          color: Colors.green.shade800,
                          fontWeight: FontWeight.normal,
                          fontSize: fontSizeTitle)),
                ),
              ),
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'assets11/images11/c.jpeg',
                    height: imageHeight,
                    width: imageWidth,
                    fit: BoxFit.cover,
                  ),
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
                          title: Text(dinner[index],
                              style: TextStyle(
                                fontSize: fontSizeText,
                                color: isFoodItem(dinner[index])
                                    ? Colors.green.shade600
                                    : Colors.black,
                                fontWeight: isFoodItem(dinner[index])
                                    ? FontWeight.bold
                                    : FontWeight.normal,
                              ))),
                    );
                  }),
            ])
          ],
        ),
      ),
    );
  }
}
