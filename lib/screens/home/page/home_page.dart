import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:senpai/screens/home/widgets/home_content.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomeContent(),
    );
  }
}
