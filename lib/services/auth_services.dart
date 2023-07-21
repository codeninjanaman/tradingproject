import 'package:flutter/material.dart';
import 'package:responsivedesign2/constants.dart';
import 'package:responsivedesign2/models/user.dart';
import 'package:http/http.dart' as http;
import 'package:responsivedesign2/services/errorhandling.dart';
import 'package:responsivedesign2/signIn/SignIn.dart';
import 'package:responsivedesign2/utils.dart';

class AuthService {
  void signUpUser({
    required BuildContext context,
    required String email,
    required String password,
    required String name,
  }) async {
    try {
      User user = User(
          id: '',
          name: name,
          email: email,
          password: password,
          address: '',
          type: '',
          token: '');

        http.Response res = await http.post(
        // Uri.parse('$URI/api/signup'),
        Uri.parse('$uri/api/signup'),
        body: user.toJson(),
        headers: <String, String>{
          // 'Content-Type': 'application/json; charset=UTF-8',
          'Content-Type':'application/json; charset=UTF-8',
          'Accept': '*/*',
        },
      );
      httpErrorHandle(response: res,
      context: context, 
      onSuccess: () {
        showSnackbar(context,'Account created! Login with the same credentials');
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=> SignIn()));
      });
    } catch (e) {
      showSnackbar(context,
      "Something went wrong while creating account.\nPlease check your internet connection and try again.");
      // e.toString()); 
    }
  }
}
