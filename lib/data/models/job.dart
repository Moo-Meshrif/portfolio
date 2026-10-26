class Job {
  const Job({
    required this.dates,
    required this.role,
    required this.company,
    required this.location,
    required this.highlights,
  });

  final String dates;
  final String role;
  final String company;
  final String location;
  final List<String> highlights;
}

class Education {
  const Education({required this.dates, required this.degree, required this.school, required this.languages});

  final String dates;
  final String degree;
  final String school;
  final String languages;
}
