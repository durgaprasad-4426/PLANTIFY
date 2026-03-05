import 'package:appui_create/loginscrn.dart';
import 'package:appui_create/signscrn.dart';
import 'package:flutter/material.dart';

class Startscrn extends StatefulWidget {
  const Startscrn({super.key});

  @override
  State<Startscrn> createState() => _StartscrnState();
}

class _StartscrnState extends State<Startscrn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/Image.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Container(
            width: 400,
            height: 850,
            decoration: BoxDecoration(color: Colors.black12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 200, left: 17),
                  child: Row(
                    children: [
                      Text(
                        "Plants.",
                        style: TextStyle(
                          fontSize: 75,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                      Text(
                        "Life",
                        style: TextStyle(
                          fontSize: 75,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 251, 227, 147),
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 10),
                  child: Text(
                    "Discover the world of plants – from vibrant flowers to air-purifying indoor greens. Whether you're a beginner or a plant lover, this app helps you explore, care for, and grow your green companions with ease. Let nature thrive at your fingertips.🌿",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50, left: 24, right: 24),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Loginscrn()),
                      );
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
                      backgroundColor: Color.fromARGB(255, 255, 231, 153),
                    ),
                    child: Text("Login", style: TextStyle(color: Colors.black)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15, left: 24, right: 24),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Signscrn()),
                      );
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
                      backgroundColor: Color(0xFFD1D8DC),
                    ),
                    child: Text(
                      "Create a new account",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
