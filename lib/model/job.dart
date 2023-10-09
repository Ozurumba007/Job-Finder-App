class Job {
  String titleOfJob;
  String imagePath;
  String jobLocation;

  Job({
    required this.titleOfJob,
    required this.imagePath,
    required this.jobLocation,
  });

  String get _titleOfJob => titleOfJob;
  String get _imagePath => imagePath;
  String get _jobLocation => jobLocation;
}
