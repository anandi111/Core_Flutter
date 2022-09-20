import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  String email = "";
  String pass = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Screen"),
      ),
      body: Form(
          key: _formKey,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text("Enter yor Email"),
                    ),
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "Enter email First...";
                      }
                      return null;
                    },
                    onSaved: (val) async {
                      final prefs = await SharedPreferences.getInstance();
                      prefs.setString("email", val!);

                      setState(() {
                        email = prefs.getString("email")!;
                      });
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: passController,
                    keyboardType: TextInputType.number,
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text("Enter Your Password"),
                    ),
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "Enter password First...";
                      }
                      return null;
                    },
                    onSaved: (val) async {
                      final prefs = await SharedPreferences.getInstance();
                      prefs.setString("pass", val!);

                      setState(() {
                        pass = prefs.getString("pass")!;
                      });
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          if (email == "admin@gmail.com" && pass == "123456") {
                            setState(() {
                              Navigator.pushNamed(context, "/");
                            });
                          }
                        }
                      },
                      child: Text("Login"))
                ],
              ),
            ),
          )),
    );
  }
}
