import 'package:appui_create/homescrn.dart';
import 'package:flutter/material.dart';

class Detailsscrn extends StatelessWidget {
  const Detailsscrn({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Row(
                children: [
                  SizedBox(width: 15),
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Homescrn()),
                      );
                    },
                    icon: Icon(Icons.arrow_back, size: 30),
                  ),
                  SizedBox(width: 100),
                  Text(
                    'Details',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  SizedBox(width: 90),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.favorite_border_outlined, size: 30),
                  ),
                ],
              ),
            ),
            SizedBox(height: 60),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 0, right: 100),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 181, 237, 223),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      ),
                    ),
                    width: 700,
                    height: 400,
                  ),
                ),
                Positioned(
                  child: Image.asset(
                    'assets/plant33.png',
                    width: 200,
                    height: 400,
                  ),
                ),
                Positioned(
                  top: 10,
                  child: Column(
                    children: [
                      D1('Humidity', '60%', Icons.water_drop_rounded),
                      SizedBox(height: 10),
                      D1('Height', '1.6m', Icons.height_rounded),
                      SizedBox(height: 10),
                      D1('Diameter', '0.7m', Icons.south_west_sharp),
                      SizedBox(height: 10),
                      D1('Sunlight', '5.8k%', Icons.sunny),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 10),
                    child: Text(
                      'Lantana',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 90.0),
                    child: Icon(Icons.star, color: Colors.amber),
                  ),
                  Text(
                    '4.8',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '(268 Reviews)',
                    style: TextStyle(color: Colors.grey, fontSize: 15),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 17),
              child: Text(
                "Lantana, with about 150 species, belongs to the \nverbena family. Its colorful flower clusters attract \nbutterflies and bees. Thriving in warm climates, it's \npopular in gardens for long-lasting blooms. Read \nMore",
              ),
            ),
            SizedBox(height: 24),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 17),
                      child: Text(
                        'Price',
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 17),
                      child: Text(
                        '\$39.99',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 50),
                ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        duration: Duration(seconds: 2),
                        backgroundColor: Colors.teal.shade900,
                        content: Text(
                          "Added to Card!",
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(230, 60),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    textStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    backgroundColor: Color.fromARGB(255, 248, 215, 118),
                  ),
                  child: Text(
                    "Add to Card",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget D1(String txt, String n1, IconData ic) {
    return Padding(
      padding: const EdgeInsets.only(left: 210, top: 20),
      child: Container(
        width: 150,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(17),
          color: const Color.fromARGB(255, 248, 221, 142),
        ),
        child: Row(
          children: [
            SizedBox(width: 12),
            Icon(ic, color: Colors.teal.shade900, size: 33),
            SizedBox(width: 20),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    txt,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    n1,
                    style: TextStyle(
                      color: Colors.black,
                      // fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
