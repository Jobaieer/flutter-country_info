import 'package:country_info/view/screens/home.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/logo.png', height: 200, width: 200),
              Text(
                "Log In",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),

              SizedBox(height: 25),

              Form(
                key: _formKey,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: TextFormField(
                        controller: emailController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          hintText: 'Type Email',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          prefixIcon: Icon(Icons.email_outlined),
                          prefixIconColor: Colors.blueAccent,
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return ('Tpe your valid Email.');
                          } else {
                            return null;
                          }
                        },
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(
                        top: 5,
                        right: 20,
                        left: 20,
                        bottom: 10,
                      ),
                      child: TextFormField(
                        controller: passwordController,
                        obscureText: true,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          hintText: 'Type Password',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          prefixIcon: Icon(Icons.password),
                          prefixIconColor: Colors.blueAccent,
                          suffixIcon: Icon(Icons.check_circle_sharp),
                          suffixIconColor: Colors.lightBlueAccent,

                          // labelText: 'User Password',
                          // labelStyle: TextStyle(
                          //   fontSize: 20,
                          //   fontWeight: FontWeight.bold,
                          //   color: Colors.redAccent
                          // )
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Type your Password.';
                          } else if (value.length < 6) {
                            return 'Password must be up to 5 character.';
                          } else {
                            return null;
                          }
                        },
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('Login Successful')),
                          );
                        }

                        // If I use this Navigator.push it show me back button on Appbar, Normally back previous page/pages.
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Home(email: emailController.text,)),
                        );

                        // When I use this .pushReplacement it clear other state in stack only left Home(), ultimately can't back previous page/pages.
                        // Navigator.pushReplacement(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => Home(email: emailController.text,)),
                        // );
                      },

                      // onPressed: () { print(emailController.text); print(passwordController.text); },
                      child: Text(
                        'Login',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blueAccent,
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
