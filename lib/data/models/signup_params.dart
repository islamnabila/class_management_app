class SignupParams {
  final String name;
  final String email;
  final String password;
  final String section;
  final String userId;

  SignupParams(
      {required this.name,
      required this.email,
      required this.password,
      required this.section,
      required this.userId});

  Map<String, dynamic> toJson() => {
        "name": name,
        "email": email,
        "password": password,
        "section": password,
        "userId": userId,
      };

}
