import 'dart:async';
import 'package:http/http.dart' show Client;
import 'package:pet_my_cat/models/sign_up.dart';
import 'dart:convert';

import 'package:pet_my_cat/models/token.dart';

class ApiProvider {
  Client client = Client();

  Future<Token> postSignUp(SignUp singUp) async {
    print("entered");
    final response = await client
        .post("http://sit-my-pet.herokuapp.com/swagger.json/api/auth/signup",
          body: singUp);
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