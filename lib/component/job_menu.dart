import 'package:flutter/material.dart';
import 'package:job_search_app/component/job_type.dart';

import '../model/job.dart';

class JobMenu extends StatelessWidget {
  final void Function()? onTap;
  final Job job;
  const JobMenu({
    super.key,
    required this.job,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 300,
        margin: EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(
          color: job.color,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // hiring company logo
                  Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: AssetImage(job.imagePath),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      // hiring company location
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            job.titleOfJob,
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            job.jobLocation,
                            style: TextStyle(
                              color: Colors.grey[700],
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  // book mark icon
                  Icon(
                    Icons.bookmark_outline,
                    color: Colors.grey[300],
                    size: 30,
                  )
                ],
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  JobType(text: 'Full-Time'),
                  SizedBox(width: 15),
                  JobType(text: 'Remote'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
