class FindCandidateData {
  const FindCandidateData({
    required this.initials,
    required this.name,
    required this.role,
    required this.rating,
    required this.location,
    required this.experience,
    required this.availability,
    required this.skills,
    required this.bookmarked,
  });

  final String initials;
  final String name;
  final String role;
  final String rating;
  final String location;
  final String experience;
  final String availability;
  final List<String> skills;
  final bool bookmarked;
}

