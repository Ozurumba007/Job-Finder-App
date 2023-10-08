import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Custom app bar

          Row(
            children: [
              Container(
                height: 50,
                width: 50,
              ),
              Column(
                children: [
                  Text('Good Morning'),
                  Text('Ozurumba Onwuasoanya'),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
