class UserInfo {
  final String name, title, phone, email, linkedin;
  final List<EducationInfo> education;
  final List<ProjectInfo> projects;

  UserInfo({
    required this.name,
    required this.title,
    required this.phone,
    required this.email,
    required this.linkedin,
    required this.education,
    required this.projects,
  });
}

class EducationInfo {
  final String logo;
  final String degree;
  final String university;
  final double gpa;

  EducationInfo({required this.logo, required this.degree, required this.university, required this.gpa});
}

class ProjectInfo {
  final String title, description, image;

  ProjectInfo({required this.title, required this.description, required this.image});
}
