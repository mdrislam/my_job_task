import 'dart:developer';

import "package:flutter/material.dart";
import 'package:my_job_task/config/size_config.dart';
import 'package:my_job_task/main.dart';
import 'package:my_job_task/model/user_signin_response.dart';
import 'package:my_job_task/ui/gb_widgets/showloding_dialog.dart';
import 'package:my_job_task/ui/navigation/bottom_navigation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../const/app_color_constant.dart';
import '../../service/service_api.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final addFormKey = GlobalKey<FormState>();

  final TextEditingController phone =
      TextEditingController(text: '01600223852');
  final TextEditingController password = TextEditingController(text: '123456');
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      key: addFormKey,
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'User Sign-In',
              style: AppColorsConst.headingStyle(18)
                  .copyWith(color: AppColorsConst.primaryColor),
            ),
            const SizedBox(
              height: 30,
            ),
            TextFormField(
              textAlign: TextAlign.start,
              controller: phone,
              style: AppColorsConst.titleStyle
                  .copyWith(fontSize: getProportionateScreenWidth(16)),
              autofocus: false,
              decoration: InputDecoration(
                hintStyle: AppColorsConst.detailsTextStyle
                    .copyWith(fontSize: getProportionateScreenWidth(10)),
                icon: const Icon(Icons.phone),
                labelText: 'Phone',
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            TextFormField(
              textAlign: TextAlign.start,
              controller: password,
              obscureText: true,
              style: AppColorsConst.titleStyle
                  .copyWith(fontSize: getProportionateScreenWidth(16)),
              autofocus: false,
              decoration: InputDecoration(
                hintStyle: AppColorsConst.detailsTextStyle
                    .copyWith(fontSize: getProportionateScreenWidth(10)),
                icon: const Icon(Icons.lock),
                labelText: 'Password',
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            ElevatedButton(
                onPressed: () {
                  if (phone.text.isNotEmpty && password.text.isNotEmpty) {
                    getSignIn(phone.text, password.text);
                  } else {
                    print('Empty Fields');
                  }
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 18.0, vertical: 10),
                  child: Text(
                    'Sign-In',
                    style: AppColorsConst.headingStyle(18)
                        .copyWith(color: Colors.white),
                  ),
                ))
          ],
        ),
      ),
    );
  }

  getSignIn(String phone, String password) async {
    final prefs = await SharedPreferences.getInstance();

    showLoaderDialog(context, 'Please wait......');
    UserSignInResponse? userSignInResponse =
        await ServiceApi.getUserSigninByPhoneAndPassword(phone, password);
    print(userSignInResponse!.token!.plainTextToken);
    if (userSignInResponse.statusCode == 200) {
      prefs.setString(
          'token', userSignInResponse.token!.plainTextToken.toString());
      Navigator.pop(context);
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => const BottomNavigation()),
          (Route<dynamic> route) => false);
    } else {
      Navigator.pop(context);
    }
  }
}
