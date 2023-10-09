import 'package:flutter/material.dart';
import 'package:job_search_app/component/custom_app_bar.dart';

import '../component/custom_textfield.dart';
import '../component/find_a_job_container.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),

              // Custom app bar
              CustomAppBar(),

              SizedBox(height: 20),
              // Headline Text
              Text(
                'Find a job you are\ninterested in',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),

              // Textfield widget

              SizedBox(height: 20),
              CustomTextField(),

              // Container (Lets find a job for you + button +image),

              SizedBox(height: 20),

              FindAJobContainer(),
            ],
          ),
        ),
      ),
    );
  }
}
