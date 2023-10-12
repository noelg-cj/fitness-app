// ignore_for_file: prefer_const_constructors

import 'package:firstapp/models/today_meals_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class planner extends StatelessWidget {
  planner({super.key});

  List<TodaysMeals> todays_meals = [];

  void _getInitialInfo() {
    todays_meals = TodaysMeals.getTodaysMeals();
  }

  @override
  Widget build(BuildContext context) {
    _getInitialInfo();
    return Scaffold(
      appBar: _appBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _nutrientsGraph(),
            SizedBox(height: 20),
            _scheduleButton(),
            SizedBox(height: 20),
            _todaysMeals(),
            SizedBox(height: 20),
            Column(
              children: [
                Text(
                  'Find Something to Eat',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w600
                  )
                ),
              ],
            )
          ],
        ),
      )
    );
  }

  Column _todaysMeals() {
    return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Today Meals',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                    ),
                  ),
                  Container(
                    height: 30,
                    width: 87,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      gradient: LinearGradient(
                      colors: const [
                      Color(0xff9DCEFF),
                      Color(0xff92A3FD)
                        ]
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Breakfast',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        )
                      ),
                    ),
                  )
                ],
              ),
            ),

            Container(
              height: 180,
              child: ListView.separated(
                separatorBuilder: (context, index) => SizedBox(height: 10,), 
                itemCount: todays_meals.length,
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.only(left: 40, right: 40),
                    height: 80,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(todays_meals[index].iconPath),
                            SizedBox(width: 30),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  todays_meals[index].name,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                    fontSize: 15
                                  )
                                ),
                                Text(
                                  todays_meals[index].date + ' | ' + todays_meals[index].time,
                                  style: TextStyle(
                                    color: Color(0xff7B6F72),
                                    fontSize: 13
                                  )
                                )
                              ],
                            )
                          ],
                        ),
                          todays_meals[index].notifsEnabled ?
                          SvgPicture.asset(
                            'assets/icons/bell_on.svg',
                            height: 20,
                            width: 20,
                            ) :
                          SvgPicture.asset('assets/icons/bell_off.svg',
                          height: 32,
                          width: 32,
                          )
                      ],
                    )
                  );
                },
                ),
            )
          ],
        );
  }

  Padding _scheduleButton() {
    return Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Color(0xff9DCEFF).withOpacity(0.2),
              borderRadius: BorderRadius.circular(16)
            ),
            
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Daily Meal Schedule',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w500
                  )
                ),
                Container(
                  height: 30,
                  width: 75,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: const [
                        Color(0xff9DCEFF),
                        Color(0xff92A3FD)
                      ]
                    ),
                    borderRadius: BorderRadius.circular(50)
                  ),
                  child: Center(
                    child: Text(
                      'Check',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
  }

  Column _nutrientsGraph() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Meal Nutritions',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w600
                )
              ),
              Container(
                height: 30,
                width: 75,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: const [
                      Color(0xff9DCEFF),
                      Color(0xff92A3FD)
                    ]
                  ),
                  borderRadius: BorderRadius.circular(50)
                ),
                child: Center(
                  child: Text(
                    'Weekly',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        Center(
          child: SvgPicture.asset('assets/icons/Graph.svg'),
        )
      ],
    );
  }

  AppBar _appBar() {
    return AppBar(
      title: Text(
        'Meal Planner',
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.black
        ),
      ),
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
      leading: GestureDetector(
        onTap: () {
          print("hi");
        },
        child: Container(
          margin: EdgeInsets.all(10),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Color(0xffF7F8F8),
            borderRadius: BorderRadius.circular(10)
          ),
          child: SvgPicture.asset(
            'assets/icons/backArrow.svg',
            height: 20,
            width: 20,
            ),
        ),
      ),
      actions: [
        GestureDetector(
          onTap: () {
            print("Action clicked");
          },
          child: Container(
            margin: EdgeInsets.all(10),
            alignment: Alignment.center,
            width: 37,
            decoration: BoxDecoration(
              color: Color(0xffF7F8F8),
              borderRadius: BorderRadius.circular(10)
            ),
            child: SvgPicture.asset(
              'assets/icons/dots.svg',
              height: 5,
              width: 5,
              ),
          ),
        )
      ],
    );
  }
}