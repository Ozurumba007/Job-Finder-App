// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:job_search_app/component/custom_button.dart';
import 'package:job_search_app/component/job_type.dart';

import '../model/job.dart';

class JobDetailScreen extends StatefulWidget {
  final Job job;
  const JobDetailScreen({
    super.key,
    required this.job,
  });

  @override
  State<JobDetailScreen> createState() => _JobDetailScreenState();
}

class _JobDetailScreenState extends State<JobDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.grey[900],
        title: const Text('Job Details'),
        centerTitle: true,
        actions: [
          const Icon(Icons.bookmark_outline),
          const SizedBox(width: 10),
        ],
      ),
      body: Column(
        children: [
          // ListView of job details
          Expanded(
            flex: 1,
            child: ListView(
              children: [
                const SizedBox(height: 20),
                // image
                Image.asset(
                  widget.job.imagePath,
                  height: 120,
                ),
                Column(
                  children: [
                    const SizedBox(height: 10),
                    Text(
                      widget.job.titleOfJob,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'New York',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.grey[700],
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Vienna . \£10k - 20k',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.grey[700],
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 20),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        JobType(text: 'Full Time'),
                        SizedBox(width: 15),
                        JobType(text: 'Remote'),
                        SizedBox(width: 15),
                        JobType(text: 'Designs'),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.white,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20),
                      Text(
                        'Description',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'We are looking for a UI/UX Designer to turn our\nsoftware into easy-to-use products for our clients.\nUI/UX Designer responsibilities include gathering\nuser requirements, designing graphic elements and building navigation components.',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey[600],
                          height: 2,
                        ),
                      ),
                      Spacer(),
                      CustomButton(text: 'Apply now'),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
