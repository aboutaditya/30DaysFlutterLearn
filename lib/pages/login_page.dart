import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/Routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(children: [
          Image.asset(
            "assets/images/login.png",
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 20.0,
          ),
          Text(
            "Welcome $name",
            style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                      hintText: "Enter Username", labelText: "Username"),
                  onChanged: (value) {
                    name = value;
                    setState(() {});
                  },
                ),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                      hintText: "Enter Password", labelText: "Password"),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                InkWell(
                  onTap: () async {
                    setState(() {
                      changeButton = true;
                    });
                    await Future.delayed(const Duration(seconds: 1));
                    Navigator.pushNamed(context, MyRoutes.homeRoute);
                  },
                  child: AnimatedContainer(
                    duration: const Duration(seconds: 1),
                    width: changeButton ? 50 : 150.0,
                    height: 50.0,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius:
                            BorderRadius.circular(changeButton ? 50 : 8.0)),
                    child: changeButton
                        ? (const Icon(
                            Icons.done,
                            color: Colors.white,
                          ))
                        : const Text(
                            "Login",
                            style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                  ),
                )
                // ElevatedButton(
                //   style: TextButton.styleFrom(
                //       minimumSize: const Size(120.0, 40.0)),
                //   child: const Text(
                //     "Login",
                //     style: TextStyle(fontSize: 20),
                //   ),
                //   onPressed: () {
                //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                //   },
                // )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
