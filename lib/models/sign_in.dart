import 'dart:convert';

SignIn signInFromJson(String str) {
  final jsonData = json.decode(str);
  return SignIn.fromJson(jsonData);
}

String signInToJson(SignIn data) {
  final dyn = data.toJson();
  return json.encode(dyn);
}

class SignIn {
  String identifier;
  String password;

  SignIn({
    this.identifier,
    this.password,
  });

  factory SignIn.fromJson(Map<String, dynamic> json) => new SignIn(
    identifier: json["identifier"],
    password: json["password"],
  );

  Map<String, dynamic> toJson() => {
    "identifier": identifier,
    "password": password,
  };
}
