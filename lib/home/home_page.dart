import 'package:DevQuiz/home/widgets/appbar/app_bar_widget.dart';
import 'package:DevQuiz/home/widgets/level_button/level_button_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            LevelButtonWidget(label: 'Fácil'),
            LevelButtonWidget(label: 'Médio'),
            LevelButtonWidget(label: 'Difícil'),
            LevelButtonWidget(label: 'Perito'),
          ],
        ),
      ),
    );
  }
}
