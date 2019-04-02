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
  final String _url = "sit-my-pet.herokuapp.com";

  Future<Token> postRegister(SignUp signUp) async {
    print("entered");
    final uri = Uri.http(_url, "/api/auth/signup");
    final response = await
        http.post(uri,
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
    final uri = Uri.https(_url, '/api/auth/signin/credentials');
    final response = await
    http.post(uri,
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