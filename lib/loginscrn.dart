import 'package:appui_create/homescrn.dart';
import 'package:appui_create/signscrn.dart';
import 'package:flutter/material.dart';

class Loginscrn extends StatefulWidget {
  const Loginscrn({super.key});

  @override
  State<Loginscrn> createState() => _LoginscrnState();
}

class _LoginscrnState extends State<Loginscrn> {
  final passCtrl = TextEditingController();
  final emailCtrl = TextEditingController();
  bool _isVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(),
            child: Image.asset('assets/Image.png', fit: BoxFit.fill),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 400),
            child: Container(
              width: 400,
              height: 500,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,

                        // color: Color(0xFF4B948B),
                      ),
                    ),
                    Text(
                      "Your journey is finally here",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 30),
                    TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xFFD5E7E3),
                        // fillColor: Color.fromARGB(255, 196, 183, 146),
                        hintText: "Username or Email",
                        border: OutlineInputBorder(
                          // borderSide: BorderSide(color: Colors.black),
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      controller: emailCtrl,
                    ),
                    SizedBox(height: 10),
                    TextField(
                      obscureText: !_isVisible,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xFFD5E7E3),
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              _isVisible = !_isVisible;
                            });
                          },
                          icon: Icon(
                            !_isVisible
                                ? Icons.visibility_off_outlined
                                : Icons.visibility,
                            color: Colors.black,
                          ),
                        ),
                        hintText: "Enter your password",
                        border: OutlineInputBorder(
                          // borderSide: BorderSide(color: Colors.black),
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      controller: passCtrl,
                    ),
                    SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsets.only(left: 210),
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "Forgot Password?",
                          style: TextStyle(color: Color(0xFF4B948B)),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        final email = emailCtrl.text.trim();
                        final pass = passCtrl.text;
                        if (email == "prasad@gmail.com" && pass == "prasad") {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Homescrn()),
                          );
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              duration: Duration(seconds: 1),
                              content: Text(
                                "Invalid Email or Password",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                ),
                              ),
                              backgroundColor: Color(0xFF4B948B),
                            ),
                          );
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(400, 60),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        textStyle: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        // backgroundColor: Colors.teal,
                        backgroundColor: Color(0xFF4B948B),
                        // backgroundColor: Color.fromARGB(255, 254, 224, 125),
                        // backgroundColor: Colors.amber.shade300,
                      ),
                      child: Text(
                        "Login",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(left: 60),
                      child: Row(
                        children: [
                          Text("Don't have account?"),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Signscrn(),
                                ),
                              );
                            },
                            child: Text(
                              "Create one!",
                              style: TextStyle(
                                color: Color(0xFF4B948B),
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
        ],
      ),
    );
  }
}
