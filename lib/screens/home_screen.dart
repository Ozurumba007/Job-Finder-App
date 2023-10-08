import 'package:flutter/material.dart';
import 'package:job_search_app/component/custom_app_bar.dart';

import '../component/custom_textfield.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),

              // Custom app bar
              const CustomAppBar(),

              const SizedBox(height: 20),
              // Headline Text
              const Text(
                'Find a job you are\ninterested in',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),

              // Textfield widget

              const SizedBox(height: 20),
              const CustomTextField(),

              // Container (Lets find a job for you + button +image),

              const SizedBox(height: 20),
              Container(
                height: 120,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.blue.shade200,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
