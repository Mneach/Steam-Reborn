import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:steam_reborn/Colors/colors.dart';
import 'package:steam_reborn/screens/home.dart';
import 'package:steam_reborn/utilities/Validation/validation.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();
  var logoUrl = 'Logo4.png';

  TextEditingController accountNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void handleMove() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
      autovalidateMode: AutovalidateMode.always,
      key: formKey,
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            logoUrl,
            width: 100,
            height: 100,
          ),
          const Text(
            'STEAM REBORN',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 30,
                fontFamily: 'SFPRO',
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          Container(
              margin: const EdgeInsets.only(top: 40.0),
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: TextFormField(
                  controller: accountNameController,
                  decoration: const InputDecoration(
                      filled: true,
                      fillColor: secondaryColor,
                      border: OutlineInputBorder(),
                      labelText: 'Account Name',
                      hintText: 'Enter Account Name',
                      labelStyle: TextStyle(color: fontColor)),
                  validator: (value) {
                    if (value != null &&
                        checkUpperCaseLetter(value) == false) {
                      return "Account name must contain at least one uppercase letter";
                    } else if (value != null &&
                        checkLength(6, value.length) == false) {
                      return "Account name must more than 6 characters";
                    } else {
                      return null;
                    }
                  },
                  style: const TextStyle(color: fontColor),
                ),
              )),
          Container(
              margin: const EdgeInsets.only(top: 20.0),
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: TextFormField(
                  obscureText: true,
                  controller: passwordController,
                  decoration: const InputDecoration(
                      filled: true,
                      fillColor: secondaryColor,
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                      hintText: 'Enter Password',
                      labelStyle: TextStyle(color: fontColor)),
                  validator: (value) {
                    if (value != null &&
                        checkLength(6, value.length) == false) {
                      return "Password must more than 6 characters";
                    } else if (value != null &&
                        checkAlphaNumberic(value) == false) {
                      return "Password must be alphanumberic";
                    } else {
                      return null;
                    }
                  },
                  style: const TextStyle(color: fontColor),
                ),
              )),
          Container(
              margin: const EdgeInsets.only(top: 20.0),
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: buttonColor,
                    minimumSize: const Size.fromHeight(50), // NEW
                  ),
                  onPressed: () {
                    final checkIfAllValid = formKey.currentState!.validate();
                    if (checkIfAllValid == true) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return HomePage(
                            accountName: accountNameController.text);
                      }));
                      Navigator.pushAndRemoveUntil(context,
                          MaterialPageRoute(builder: ((context) {
                        return HomePage(
                            accountName: accountNameController.text);
                      })), (route) => false);
                    } 
                  },
                  child: const Text(
                    'Submit',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              )),
        ],
      )),
    ));
  }
}
