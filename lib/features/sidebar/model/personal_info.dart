class PersonalInfo {
  final String image;
  final String fullName;
  final String professionalTitle;
  final String email;
  final String phone;
  final String linkedIn;
  final String gitHub;

  PersonalInfo({
    required this.image,
    required this.fullName,
    required this.professionalTitle,
    required this.email,
    required this.phone,
    required this.linkedIn,
    required this.gitHub,
  });

  factory PersonalInfo.fromJson(Map<String, dynamic> json) {
    return PersonalInfo(
      image: json["image"],
      fullName: json["fullName"],
      professionalTitle: json["professionalTitle"],
      email: json["email"],
      phone: json["phone"],
      linkedIn: json["linkedIn"],
      gitHub: json["gitHub"],
    );
  }
}
