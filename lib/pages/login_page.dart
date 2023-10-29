// ignore_for_file: avoid_print, sort_child_properties_last

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              children: [
                const Spacer(),
                const Text(
                  "Hello, Welcome back!",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Urbanist'),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  "Login to continue",
                  style: TextStyle(color: Colors.white),
                ),
                const Spacer(),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'User Name',
                    border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.5),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Password',
                    border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.5),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(foregroundColor: Colors.white),
                    child: const Text('Forgot Password'),
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                SizedBox(
                  height: 48,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      // Navigator.of(context).push(
                      //   MaterialPageRoute(
                      //     builder: (context) {
                      //       return const HomePage();
                      //     },
                      //   ),
                      // );
                      Navigator.of(context).pushReplacementNamed('/main');
                      // remove back stack .pushReplacementNamed
                    },
                    child: const Text('Log in'),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.amber,
                        foregroundColor: Colors.black),
                  ),
                ),
                const Spacer(),
                const Text(
                  "Or sign in with",
                  style: TextStyle(color: Colors.white),
                ),
                const SizedBox(
                  height: 16,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(50),
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/google.png',
                        height: 22,
                        width: 22,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      const Text("Login with Google"),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(50),
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/facebook.png',
                        height: 22,
                        width: 22,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      const Text("Login with Facebook"),
                    ],
                  ),
                ),
                Row(
                  children: [
                    const Text(
                      "Don't have account?",
                      style: TextStyle(color: Colors.white),
                    ),
                    TextButton(
                      onPressed: () {
                        print('hello');
                      },
                      style:
                          TextButton.styleFrom(foregroundColor: Colors.amber),
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(decoration: TextDecoration.underline),
                      ),
                    ),
                  ],
                ),
                const Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
