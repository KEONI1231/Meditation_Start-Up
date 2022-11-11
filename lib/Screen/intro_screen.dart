import 'dart:async';

import 'package:flutter/material.dart';
import 'package:meditation/Constant/color.dart';
import 'package:meditation/Screen/home_screen.dart';
import 'package:meditation/Screen/login_screen.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final ts = TextStyle(
      fontWeight: FontWeight.w900, color: Colors.white, fontSize: 34);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: PRIMARY_COLOR,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('로고 이미지',style: ts,),
              intro_bottom(), //각종 기본적인 텍스트.
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return LoginScreen();
                  }));
                },
                child: Text('시작하기'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class intro_bottom extends StatefulWidget {
  const intro_bottom({Key? key}) : super(key: key);

  @override
  State<intro_bottom> createState() => _intro_bottomState();
}

class _intro_bottomState extends State<intro_bottom> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 32.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'ⓒ명상사업팀',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 10.0,
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            '명상가들을 위한 앱',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 11.0,
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            'Test.ver',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 10.0,
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
