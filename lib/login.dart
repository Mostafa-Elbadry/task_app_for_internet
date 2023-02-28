import 'package:flutter/material.dart';

import 'home.dart';
import 'register.dart';
import 'share/cleanelevatedbutton.dart';
import 'share/cleantextformfield.dart';
import 'share/customclippath.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                      'LOGIN',
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
                      textInputType: TextInputType.emailAddress,
                      prefixIcon: Icons.email,
                      labelText: 'Email',
                      hintText: 'email@gmail.com',
                      obscureText: false,
                    ),
                    const CleanTextFormField(
                      textInputType: TextInputType.visiblePassword,
                      prefixIcon: Icons.lock,
                      labelText: 'Password',
                      hintText: 'Enter Your Password',
                      obscureText: true,
                    ),
                    // space for buttons
                    const SizedBox(
                      height: 10,
                    ),
                    // buttons Place
                    CleanElevatedButton(
                      onPressed: (){
                            Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return const HomePage();
                            },
                          ),
                        );
                      },
                      width: width,
                      height: height,
                      nameText: 'Login',
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
                              return const RegisterPage();
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
                        'Register',
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
