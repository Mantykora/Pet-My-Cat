import 'dart:async';
import 'package:http/http.dart' show Client;
import 'package:pet_my_cat/models/sign_in.dart';
import 'package:pet_my_cat/models/sign_up.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;


import 'package:pet_my_cat/models/token.dart';

class ApiProvider {
 // SignUp get sigxnUp => null;

 // SignUp signUp;

 // Client client = Client();

  Future<Token> postRegister(SignUp signUp) async {
    print("entered");
    final response = await
        http.post("http://sit-my-pet.herokuapp.com/api/auth/signup",
          headers: {"Content-type": "application/json"},
          body: signUpToJson(signUp));
    print(response.body.toString());
    if (response.statusCode == 200) {
      // If the call to the server was successful, parse the JSON
      return Token.fromJson(json.decode(response.body));
    } else {
      // If that call was not successful, throw an error.
      throw Exception('Failed to load post');
    }
  }

  Future<Token> postLogin(SignIn signIn) async {
    print("entered");
    final response = await
    http.post("http://sit-my-pet.herokuapp.com/api/auth/signin/credentials",
        headers: {"Content-type": "application/json"},
        body: signInToJson(signIn));
    print(response.body.toString());
    if (response.statusCode == 200) {
      // If the call to the server was successful, parse the JSON
      return Token.fromJson(json.decode(response.body));
    } else {
      // If that call was not successful, throw an error.
      throw Exception('Failed to load post');
    }
  }

}