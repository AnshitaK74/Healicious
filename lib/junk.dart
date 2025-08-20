import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: NoJunkFoodScreen(), debugShowCheckedModeBanner: false));

class NoJunkFoodScreen extends StatefulWidget {
  @override
  State<NoJunkFoodScreen> createState() => _NoJunkFoodScreenState();
}

class _NoJunkFoodScreenState extends State<NoJunkFoodScreen> {
  int _completedDays = 0;
  final int _goalDays = 7;

  void _markDayDone() {
    if (_completedDays < _goalDays) {
      setState(() {
        _completedDays++;
      });
    }
  }

  void _reset() {
    setState(() {
      _completedDays = 0;
    });
  }

  Widget _buildDayIcon(int index) {
    bool done = index < _completedDays;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Icon(Icons.circle_outlined, size: 40, color: done ? Colors.green : Colors.grey[300]),
          if (done) Icon(Icons.check, size: 24, color: Colors.green),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("No Junk Food Challenge", style: TextStyle(color: Colors.green[900])),
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.green),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            Text("Avoid Junk Food for $_goalDays Days",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.green)),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(_goalDays, (index) => _buildDayIcon(index)),
            ),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: _markDayDone,
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
              child: Text("No Junk Food Today", style: TextStyle(color: Colors.white)),
            ),
            TextButton(
              onPressed: _reset,
              child: Text("Reset", style: TextStyle(color: Colors.green[800])),
            ),
          ],
        ),
      ),
    );
  }
}