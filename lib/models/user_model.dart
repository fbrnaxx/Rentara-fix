class UserModel {
  final String? id;
  final String email;
  final String username;
  final String password;

  const UserModel({
    this.id,
    required this.email,
    required this.username,
    required this.password,
  });

  toJson(){
    return {
      "Email": email,
      "Username": username,
      "Password": password,
    };
  }
}