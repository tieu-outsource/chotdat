import 'package:auto_route/auto_route.dart';
import 'package:chotdat/routes/app_router.gr.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: MaterialButton(
      onPressed: () {
      },
      color: Colors.red,
      child: const Text('go to Item'),
    ));
  }
}
