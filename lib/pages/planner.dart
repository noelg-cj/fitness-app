// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class planner extends StatelessWidget {
  const planner({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: Column(
        children: [
          _nutrientsGraph(),
          SizedBox(height: 20),
          Padding(
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
          )
        ],
      )
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
                      fontSize: 10
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