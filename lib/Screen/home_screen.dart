import 'package:flutter/material.dart';
import 'package:meditation/Constant/color.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ContainerDecoration = BoxDecoration(
      color: Colors.white,
      //border: Border.all(width: 2, color: PRIMARY_COLOR),
      borderRadius: BorderRadius.circular(16),
      boxShadow: [
        BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 7,
            offset: Offset(0, 10))
      ],
    );
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            AppBar(
              title: const Text('Meditation'),
              backgroundColor: PRIMARY_COLOR,
              centerTitle: true,
            ),
            const SizedBox(
              height: 32,
            ),
            MainContentCon(
                text: '동국대학교', ContainerDecoration: ContainerDecoration),
            const SizedBox(
              height: 32,
            ),
            MainContentCon(text: '쓰담', ContainerDecoration: ContainerDecoration)
          ],
        ),
      ),
    );
  }
}

class MainContentCon extends StatelessWidget {
  final String text;
  final BoxDecoration ContainerDecoration;

  const MainContentCon({
    required this.text,
    required this.ContainerDecoration,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ts = TextStyle(
        fontWeight: FontWeight.w900, color: PRIMARY_COLOR, fontSize: 16);
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0),
      child: Container(
        width: MediaQuery.of(context).size.width / 1.1,
        decoration: ContainerDecoration,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(8, 16, 8, 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16),
              GestureDetector(
                onTap: () {},
                child: Text(
                  text,
                  style: ts,
                ),
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
