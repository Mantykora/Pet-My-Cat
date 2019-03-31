import 'dart:convert';

SignUp signUpFromJson(String str) {
  final jsonData = json.decode(str);
  return SignUp.fromJson(jsonData);
}

String signUpToJson(SignUp data) {
  final dyn = data.toJson();
  return json.encode(dyn);
}

class SignUp {
  String identifier;
  String password;
  String email;
  String firstName;
  String lastName;

  SignUp({
    this.identifier,
    this.password,
    this.email,
    this.firstName,
    this.lastName,
  });

  factory SignUp.fromJson(Map<String, dynamic> json) => new SignUp(
    identifier: json["identifier"],
    password: json["password"],
    email: json["email"],
    firstName: json["firstName"],
    lastName: json["lastName"],
  );

  Map<String, dynamic> toJson() => {
    "identifier": identifier,
    "password": password,
    "email": email,
    "firstName": firstName,
    "lastName": lastName,
  };
}
