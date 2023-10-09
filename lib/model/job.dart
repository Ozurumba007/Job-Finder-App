import 'dart:ui';

class Job {
  String titleOfJob;
  String imagePath;
  String jobLocation;
  Color? color;

  Job({
    required this.titleOfJob,
    required this.imagePath,
    required this.jobLocation,
    this.color,
  });

  String get _titleOfJob => titleOfJob;
  String get _imagePath => imagePath;
  String get _jobLocation => jobLocation;
  Color? get _color => color;
}
