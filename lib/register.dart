import 'package:flutter/material.dart';

import 'login.dart';
import 'share/cleanelevatedbutton.dart';
import 'share/cleantextformfield.dart';
import 'share/customclippath.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
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
                      // style: Theme.of(context).textTheme.headlineMedium,
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
                    const CleanTextFormField(
                      textInputType: TextInputType.name,
                      prefixIcon: Icons.person,
                      labelText: 'Full Name',
                      hintText: 'Enter Full Name',
                      obscureText: false,
                    ),
                    const CleanTextFormField(
                      textInputType: TextInputType.emailAddress,
                      prefixIcon: Icons.email,
                      labelText: 'Email',
                      hintText: 'email@gmail.com',
                      obscureText: false,
                    ),
                    const CleanTextFormField(
                      textInputType: TextInputType.phone,
                      prefixIcon: Icons.phone,
                      labelText: 'Phone',
                      hintText: 'Enter Your Phone',
                      obscureText: false,
                    ),
                    const CleanTextFormField(
                      textInputType: TextInputType.visiblePassword,
                      prefixIcon: Icons.lock,
                      labelText: 'Password',
                      hintText: 'Enter Your Password',
                      obscureText: true,
                    ),
                    const CleanTextFormField(
                      textInputType: TextInputType.visiblePassword,
                      prefixIcon: Icons.lock,
                      labelText: 'Confirm PassWord',
                      hintText: 'Enter Your Confirm PassWord',
                      obscureText: true,
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
                      onPressed: () {},
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    OutlinedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return const LoginPage();
                            },
                          ),
                        );
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
    );
  }
}
