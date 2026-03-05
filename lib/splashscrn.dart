import 'package:appui_create/startscrn.dart';
import 'package:flutter/material.dart';

class Splashscrn extends StatefulWidget {
  const Splashscrn({super.key});

  @override
  State<Splashscrn> createState() => _SplashscrnState();
}

class _SplashscrnState extends State<Splashscrn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/Image1.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Container(
            width: 400,
            height: 800,
            decoration: BoxDecoration(color: Colors.transparent),
            child: Padding(
              padding: const EdgeInsets.only(top: 30, left: 120),
              child: Text(
                "🌿 Plants.Life",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            width: 400,
            height: 850,
            decoration: BoxDecoration(color: Colors.black12),
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 450),
                    child: Text(
                      "Bring Nature \nHome, Anytime, \nAnywhere.",
                      style: TextStyle(
                        fontSize: 42,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.normal,
                        color: const Color.fromARGB(231, 255, 255, 255),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Your-One Stop Shop or Fresh Plants \n& Greenery.",
                    style: TextStyle(
                      color: const Color.fromARGB(217, 255, 255, 255),
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Startscrn()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(400, 60),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(17),
                      ),
                      textStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      backgroundColor: Color.fromARGB(255, 248, 221, 142),
                    ),
                    child: Text(
                      "Get Started",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
