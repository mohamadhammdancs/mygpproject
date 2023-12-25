//import 'dart:math';

import 'package:flutter/material.dart';
//import 'package:flutter_svg/svg.dart';
import 'package:string_validator/string_validator.dart';

import '../../utils/app_colors.dart';
import '../../utils/styles/text_field_style.dart';

class SingUpScreen extends StatefulWidget {
  const SingUpScreen({super.key, required this.controller});
  final PageController controller;
  @override
  State<SingUpScreen> createState() => _SingUpScreenState();
}

class _SingUpScreenState extends State<SingUpScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final fKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SizedBox.fromSize(
        size: MediaQuery.sizeOf(context),
        child: Stack(
          children: [
            Positioned(
              left: 24,
              top: 30,
              child: Text(
                'Neighbor\'s\nKitcen',
                style: TextStyle(fontSize: 30, color: AppColors.darkBlue),
              ),
            ),
            Positioned(
              left: 20,
              top: 140,
              child: Text(
                'welcome to neighbors kitchen where \nboth home cooks who want so show \ntheir delicious cooking and customer \nwho want to experience food like \nthe ones at their home',
                style: TextStyle(
                    fontSize: 20, color: AppColors.primaryHighContrast),
              ),
            ),
            Positioned(
              left: 30,
              right: 30,
              bottom: 30,
              // padding: const EdgeInsets.all(30),
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: AppColors.primaryLight.withOpacity(1),
                ),
                child: Form(
                  key: fKey,
                  child: Column(
                    textDirection: TextDirection.ltr,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Sign up',
                        style: TextStyle(
                          color: AppColors.primaryHighContrast,
                          fontSize: 27,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: _emailController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Enter your mail";
                          } else if (!isEmail(value)) {
                            return "Please enter a valid mail";
                          }
                          return null;
                        },
                        style: textFieldTextStyle(),
                        decoration: textFieldDecoration('Email'),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        controller: _nameController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Enter your name";
                          } else if (value.length < 4) {
                            return "Name must have at least 4 chars";
                          }
                          return null;
                        },
                        style: textFieldTextStyle(),
                        decoration: textFieldDecoration('Full Name'),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: TextFormField(
                                obscureText: true,
                                controller: _passController,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return "Enter your password";
                                  } else if (value.length < 6) {
                                    return "Password must have at least 6 chars";
                                  }
                                  return null;
                                },
                                style: textFieldTextStyle(),
                                decoration: textFieldDecoration('Password')),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: TextFormField(
                              obscureText: true,
                              validator: (value) {
                                if (value != _passController.text) {
                                  return "Password did'nt matched";
                                }
                                return null;
                              },
                              style: textFieldTextStyle(),
                              decoration: textFieldDecoration('Re-Password'),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      FractionallySizedBox(
                        widthFactor: 1,
                        child: TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor: AppColors.primaryHighContrast,
                            foregroundColor: AppColors.whiteColor,
                          ),
                          onPressed: () async {
                            FocusManager.instance.primaryFocus?.unfocus();
                            widget.controller.animateToPage(2,
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.ease);
                          },
                          child: const Text("Create account"),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Text(
                            ' have an account?',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: AppColors.whiteColor,
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(
                            width: 2.5,
                          ),
                          InkWell(
                            onTap: () {
                              FocusManager.instance.primaryFocus?.unfocus();
                              widget.controller.animateToPage(0,
                                  duration: const Duration(milliseconds: 500),
                                  curve: Curves.ease);
                            },
                            child: Text(
                              'Log In ',
                              style: TextStyle(
                                color: AppColors.primaryHighContrast,
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
