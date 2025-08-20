import 'package:flutter/material.dart';
import 'package:recepie_app/account.dart';
import 'package:recepie_app/challenge.dart';
import 'package:recepie_app/home.dart';

class bottom extends StatefulWidget {
  const bottom({super.key});

  @override
  State<bottom> createState() => _bottomState();
}

class _bottomState extends State<bottom> {

  int selectedIndex=0;


  final List<Widget>numftabs=[
    home(),
    Challenge(),
   AccountScreen(),



  ];

  void onItemClick(int index){
    setState(() {
      selectedIndex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: numftabs[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
        items: const [

          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.category), label: 'Challenges'),
          BottomNavigationBarItem(icon: Icon(Icons.account_box), label: 'Account'),

    // Add more items if you add more screens
    ],
    currentIndex: selectedIndex,
    selectedItemColor: Colors.black,
    onTap: onItemClick,
        )

    );
  }
}
