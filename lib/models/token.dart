import 'dart:convert';

Token tokenFromJson(String str) {
  final jsonData = json.decode(str);
  return Token.fromJson(jsonData);
}

String tokenToJson(Token data) {
  final dyn = data.toJson();
  return json.encode(dyn);
}

class Token {
  String token;
  String expiresOn;

  Token({
    this.token,
    this.expiresOn,
  });

  factory Token.fromJson(Map<String, dynamic> json) => new Token(
    token: json["token"],
    expiresOn: json["expiresOn"],
  );

  Map<String, dynamic> toJson() => {
    "token": token,
    "expiresOn": expiresOn,
  };
}