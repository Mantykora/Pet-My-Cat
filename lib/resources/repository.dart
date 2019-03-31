import 'package:pet_my_cat/models/sign_up.dart';
import 'package:pet_my_cat/models/token.dart';
import 'package:pet_my_cat/resources/api_provider.dart';

class Repository {
  final apiProvider = ApiProvider();

  SignUp singUp;
  

  Future<Token> signUp() =>
      apiProvider.postSignUp(singUp);

}