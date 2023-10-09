import 'package:flutter/material.dart';
import 'package:job_search_app/component/custom_app_bar.dart';
import 'package:job_search_app/component/list_tile.dart';
import 'package:job_search_app/model/job.dart';

import '../component/custom_textfield.dart';
import '../component/find_a_job_container.dart';
import '../component/job_menu.dart';
import 'job_detail_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Job List

  List jobList = [
    // air bnb job
    Job(
      titleOfJob: 'UI/UX Designer',
      imagePath: 'assets/airbnb.png',
      jobLocation: 'Airbnb . New York',
      color: Colors.red.shade200,
    ),

    // whatsapp job
    Job(
      titleOfJob: 'UI Designer',
      imagePath: 'assets/whatsapp.png',
      jobLocation: 'Whatsapp . Austria ',
      color: Colors.green.shade200,
    ),
  ];

  // navigate to the job details Page

  void navigateToJobDetails(int index) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => JobDetailScreen(
          job: jobList[index],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: SingleChildScrollView(
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

                const FindAJobContainer(),

                // Newest matches + see all

                const SizedBox(height: 10),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Your Newest Matches',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'See all',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey[500],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),

                // Newest Matches
                Container(
                  height: 150,
                  child: ListView.builder(
                    itemCount: jobList.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => JobMenu(
                      job: jobList[index],
                      onTap: () => navigateToJobDetails(index),
                    ),
                  ),
                ),

                // Recent Job + see all

                const SizedBox(height: 10),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Recent Job',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'See all',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey[500],
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 10),
                const CustomListTile(
                  imagePath: 'assets/duolingo.png',
                  title: 'UI/UX Designer',
                  subTitle: 'Tokopedia . Indonesia',
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_rounded), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.wallet_giftcard), label: 'Jobs'),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Message'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
