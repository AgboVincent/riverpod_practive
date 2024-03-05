import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_practive/data/model/login/login_model.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';
part 'login_api.g.dart';

@riverpod
LoginApi loginApi(LoginApiRef ref){
  return LoginApi(ref);
}

class LoginApi {
  final Ref ref;
  LoginApi(this.ref);

  Future userLogin(LoginModel loginModel) async {
       var url = Uri.parse("${dotenv.env['BASE_URL']}/login");
     final response = await http.post(url,
       headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
        body: jsonEncode({
          "email": loginModel.email,
          "password": loginModel.password,
          "remember": loginModel.remember
        })
     );
       try{
      var responseData = jsonDecode(response.body);
      print(responseData);
      if(response.statusCode == 200){
        return responseData;
      }
    }
    catch(e){
      print(e);
    }
  }
   
}