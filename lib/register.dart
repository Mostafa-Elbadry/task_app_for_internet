import 'package:flutter/material.dart';

import 'login.dart';
import 'mynavigator.dart';
import 'share/cleanelevatedbutton.dart';
import 'share/cleantextformfield.dart';
import 'share/customclippath.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool isPassword = true;
  final formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              // children of Column is list of widgets
              children: <Widget>[
                // Register Place
                ClipPath(
                  clipper: CustomClipPath(),
                  child: Container(
                    height: height * .3,
                    width: double.infinity,
                    color: Colors.deepPurple,
                    child: const Center(
                      child: Text(
                        'Register',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                // column and Container to make all same space
                Container(
                  width: width * .9,
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                  ),
                  child: Column(
                    children: [
                      // Make Space
                      const SizedBox(
                        height: 10,
                      ),
                      // Text Form Field In padding For Design
                      CleanTextFormField(
                        textInputType: TextInputType.name,
                        prefixIcon: Icons.person,
                        labelText: 'Full Name',
                        hintText: 'Enter Full Name',
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please Enter Your Name';
                          }
                          return null;
                        },
                        controller: nameController,
                      ),
                      CleanTextFormField(
                        textInputType: TextInputType.emailAddress,
                        prefixIcon: Icons.email,
                        labelText: 'Email',
                        hintText: 'email@gmail.com',
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Enter your Email address';
                          } else if (emailController.text.contains('a') ==
                                  false ||
                              emailController.text.contains('.') == false) {
                            return 'Enter valid Email address';
                          }

                          return null;
                        },
                        controller: emailController,
                      ),
                      CleanTextFormField(
                        textInputType: TextInputType.phone,
                        prefixIcon: Icons.phone,
                        labelText: 'Phone',
                        hintText: 'Enter Your Phone',
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please Enter Your phone';
                          } else if (value.length == 11) {
                            return 'Phone Must be 11 number';
                          }
                          return null;
                        },
                        controller: phoneController,
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 25,
                          vertical: 10,
                        ),
                        child: TextFormField(
                          controller: passwordController,
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: isPassword,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please Enter Your Password';
                            } else if (value.length < 8) {
                              return 'Password Must be 8 characters';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.lock),
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  isPassword = !isPassword;
                                });
                              },
                              icon: isPassword
                                  ? const Icon(Icons.visibility)
                                  : const Icon(Icons.visibility_off),
                            ),
                            labelText: 'Password',
                            hintText: 'Enter Your Password',
                            border: const OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                              borderSide: BorderSide(
                                width: 2,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 25,
                          vertical: 10,
                        ),
                        child: TextFormField(
                          controller: confirmPasswordController,
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: isPassword,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please Enter Your Password';
                            } else if (value.length < 8) {
                              return 'Password Must be 8 characters';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.lock),
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  isPassword = !isPassword;
                                });
                              },
                              icon: isPassword
                                  ? const Icon(Icons.visibility)
                                  : const Icon(Icons.visibility_off),
                            ),
                            labelText: 'Confirm PassWord',
                            hintText: 'Enter Your Confirm PassWord',
                            border: const OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                              borderSide: BorderSide(
                                width: 2,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ),
                      ),

                      // space for buttons
                      const SizedBox(
                        height: 10,
                      ),
                      // buttons Place
                      CleanElevatedButton(
                        width: width,
                        height: height,
                        nameText: 'Register',
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            print(nameController.text);
                            print(emailController.text);
                            print(phoneController.text);
                            print(passwordController.text);
                            print(confirmPasswordController.text);
                          }
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      OutlinedButton(
                        onPressed: () {
                          MyNavigator(
                              context: context, widget: const LoginPage());
                        },
                        style: OutlinedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                            horizontal: width / 2.9,
                            vertical: height / 35,
                          ),
                          side: const BorderSide(
                            color: Colors.deepPurple,
                            width: 2,
                          ),
                        ),
                        child: const Text(
                          'Login',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
