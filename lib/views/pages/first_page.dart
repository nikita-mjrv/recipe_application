import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:recipe_application/views/pages/home.dart';
import 'package:recipe_application/views/pages/person_page.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  var _selectedPageIndex = 0;
  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (value) =>
          setState(
            () => _selectedPageIndex = value
          )
        ,
        children: [
          FirstScreen(),
          HomePage(),
          PersonPage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedPageIndex,
        onTap: _openPage,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.flatware),
            label: 'Recipes',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Account',
          )
        ],
      ),
    );
  }

  void _openPage(int index) {
    setState(() => _selectedPageIndex = index);
    _pageController.animateToPage(
      index,
      duration: Duration(milliseconds: 300),
      curve: Curves.linear,
    );
  }
}

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  double caloriesConsumed = 0.0;
  double dailyCaloriesGoal = 2000.0;
  TextEditingController _caloriesConsumedController = TextEditingController();
  TextEditingController _dailyCaloriesGoalController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.calculate_sharp),
            SizedBox(width: 10),
            Text(
              'Calorie counter',
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                CircularPercentIndicator(
                  radius: 200.0,
                  lineWidth: 15.0,
                  animation: true,
                  animationDuration: 1000,
                  percent: caloriesConsumed / dailyCaloriesGoal,
                  circularStrokeCap: CircularStrokeCap.round,
                  progressColor: Colors.blue,
                  center: Text(
                    '${caloriesConsumed.toInt()}/${dailyCaloriesGoal.toInt()}',
                    style: TextStyle(fontSize: 20.0, color: Colors.black),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 150.0,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    controller: _caloriesConsumedController,
                    decoration: InputDecoration(
                      hintText: 'Calories',
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (value) {
                      setState(() {
                        caloriesConsumed = double.tryParse(value) ?? 0.0;
                      });
                    },
                  ),
                ),
                SizedBox(width: 10.0),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      caloriesConsumed = 0.0;
                      _caloriesConsumedController.clear();
                    });
                  },
                  child: Text('Reset'),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 150.0,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    controller: _dailyCaloriesGoalController,
                    decoration: InputDecoration(
                      hintText: 'Daily Calories',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(width: 10.0),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      dailyCaloriesGoal =
                          double.tryParse(_dailyCaloriesGoalController.text) ??
                              dailyCaloriesGoal;
                    });
                  },
                  child: Text('Set'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
