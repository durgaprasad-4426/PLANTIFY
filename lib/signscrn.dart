import 'package:appui_create/loginscrn.dart';
import 'package:flutter/material.dart';

class Signscrn extends StatefulWidget {
  const Signscrn({super.key});

  @override
  State<Signscrn> createState() => _SignscrnState();
}

class _SignscrnState extends State<Signscrn> {
  final passCtrl1 = TextEditingController();
  final textCtrl1 = TextEditingController();
  bool _isVisible1 = false;
  bool _isIcon = false;

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
            padding: const EdgeInsets.only(top: 250),
            child: Container(
              width: 450,
              height: 600,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        "Create Your Account",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF4B948B),
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        "Create your account to start your journey",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(height: 25),
                    Text(
                      "Full Name",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(height: 5),
                    TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xFFD5E7E3),
                        hintText: "Enter your full name",
                        border: OutlineInputBorder(
                          // borderSide: BorderSide(color: Colors.white),
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      controller: textCtrl1,
                    ),
                    SizedBox(height: 7.5),
                    Text(
                      "Email",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(height: 5),
                    TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xFFD5E7E3),
                        hintText: "Enter your Email",
                        border: OutlineInputBorder(
                          // borderSide: BorderSide(color: Colors.white),
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    SizedBox(height: 7.5),
                    Text(
                      "Password",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(height: 5),
                    TextField(
                      obscureText: !_isVisible1,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xFFD5E7E3),
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              _isVisible1 = !_isVisible1;
                            });
                          },
                          icon: Icon(
                            !_isVisible1
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
                      controller: passCtrl1,
                    ),
                    SizedBox(height: 7.5),
                    Row(
                      children: [
                        SizedBox(width: 0),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              _isIcon = !_isIcon;
                            });
                          },
                          icon: Icon(
                            !_isIcon
                                ? Icons.check_box_outline_blank
                                : Icons.check_box,
                            color: Color(0xFF4B948B),
                            size: 20,
                          ),
                        ),
                        Text("I agree to the ", style: TextStyle(fontSize: 13)),
                        Text(
                          "Term & Conditions ",
                          style: TextStyle(
                            color: Color(0xFF4B948B),
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text("and ", style: TextStyle(fontSize: 13)),
                        Text(
                          "Privacy Policy",
                          style: TextStyle(
                            color: Color(0xFF4B948B),
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {
                        if (textCtrl1.text.isNotEmpty &&
                            passCtrl1.text.isNotEmpty) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                "Account Created !",
                                style: TextStyle(color: Colors.white),
                              ),
                              backgroundColor: Color(0xFF4B948B),
                            ),
                          );
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text("Please fill in all fields"),
                              backgroundColor: Colors.red,
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
                      ),
                      child: Text(
                        "Sign Up",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    SizedBox(height: 15),
                    Padding(
                      padding: const EdgeInsets.only(left: 60),
                      child: Row(
                        children: [
                          Text("Already have account?"),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Loginscrn(),
                                ),
                              );
                            },
                            child: Text(
                              "Sign in",
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
