import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:my_job_task/const/const_url.dart';
import 'package:my_job_task/model/categorise_response.dart';
import 'package:my_job_task/model/menus_response.dart';
import 'package:my_job_task/model/user_signin_response.dart';

class EServiceApi {
  ///https://khelaahobe.com/api/login
  ///get Email Sign In Response
  static Future<UserSignInResponse?> getUserSigninByEmail(
    String email,
    String password,
  ) async {
    final response = await http.post(
      Uri.parse(mainUrl + '/login'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'email': email,
        'password': password,
      }),
    );

    final body = json.decode(response.body);
    if (response.statusCode == 200) {
      print(response.body);
    } else {
      print(response.statusCode);
      return null;
    }

    return UserSignInResponse.fromJson(body);
  }

  ///get User Profile Info by Token
  static Future<CategoriseResponse?> getCategoriseByToken(
    String token,
  ) async {
    
    final response = await http.get(
      Uri.parse(mainUrl + '/auth/flutter/category'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'Authorization': 'Bearer $token'
      },
    );
  

    final body = json.decode(response.body);
    if (response.statusCode == 200) {
      print(response.body);
    } else {
      print(response.statusCode);
      return null;
    }

    return CategoriseResponse.fromJson(body);
  }

  ///get User Profile Info by Token
  static Future<MenusResponse?> getMenuByToken(
    String token,
  ) async {
  
    final response = await http.get(
      Uri.parse(mainUrl + '/auth/flutter/set/menu'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'Authorization': 'Bearer $token'
      },
    );
  
    final body = json.decode(response.body);
    if (response.statusCode == 200) {
      print(response.body);
    } else {
      print(response.statusCode);
      return null;
    }

    return MenusResponse.fromJson(body);
  }
}
