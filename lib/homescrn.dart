import 'package:appui_create/detailsscrn.dart';
import 'package:flutter/material.dart';

class Homescrn extends StatefulWidget {
  const Homescrn({super.key});

  @override
  State<Homescrn> createState() => _HomescrnState();
}

class _HomescrnState extends State<Homescrn> {
  bool _isfav = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, bottom: 20, top: 20),
              child: Row(
                children: [
                  Text(
                    "Find your \nfavourite plants",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  SizedBox(width: 120),
                  IconButton(
                    onPressed: () {},
                    iconSize: 30,
                    icon: Icon(Icons.search),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Container(
              width: 350,
              height: 130,
              decoration: BoxDecoration(
                color: Colors.teal.shade100,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30, left: 30),
                    child: Column(
                      children: [
                        Text(
                          "50% OFF",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            // color: Colors.green,
                          ),
                        ),
                        Text(
                          "02 - 23 July",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            // color: Colors.green,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 71),
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                    child: Image.asset(
                      'assets/plant11.png',
                      fit: BoxFit.fill,
                      // color: Colors.teal.shade100,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, bottom: 30),
              child: SingleChildScrollView(
                controller: ScrollController(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    OutlinedButton(onPressed: () {}, child: Text("All")),
                    SizedBox(width: 10),
                    OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.teal.shade900,
                      ),
                      child: Text(
                        "Indoor",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    SizedBox(width: 10),
                    OutlinedButton(onPressed: () {}, child: Text("Outdoor")),
                    SizedBox(width: 10),
                    OutlinedButton(onPressed: () {}, child: Text("Popular")),
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Detailsscrn()),
                      );
                    },
                    child: Container(
                      width: 210,
                      height: 330,
                      decoration: BoxDecoration(
                        color: Colors.white70,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: Image.asset(
                                  'assets/plant33.png',
                                  width: 400,
                                  height: 230,
                                ),
                              ),
                              Positioned(
                                top: 5,
                                left: 150,
                                child: IconButton(
                                  color: Colors.teal.shade900,
                                  onPressed: () {
                                    setState(() {
                                      _isfav = !_isfav;
                                    });
                                  },
                                  icon: Icon(
                                    _isfav
                                        ? Icons.favorite
                                        : Icons.favorite_outline,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text("Lantana"),
                          ),
                          SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Row(
                              children: [
                                Text(
                                  "\$549",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                                Text("USD", style: TextStyle(fontSize: 18)),
                                SizedBox(width: 60),
                                Icon(
                                  Icons.add_circle,
                                  size: 30,
                                  color: Colors.teal.shade900,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 15),
                  Container(
                    width: 210,
                    height: 330,
                    decoration: BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Image.asset(
                                'assets/plant44.png',
                                width: 400,
                                height: 230,
                              ),
                            ),
                            Positioned(
                              top: 5,
                              left: 150,
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.favorite_outline),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text("Petunia"),
                        ),
                        SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Row(
                            children: [
                              Text(
                                "\$556",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              Text("USD", style: TextStyle(fontSize: 18)),
                              SizedBox(width: 60),
                              Icon(
                                Icons.add_circle,
                                size: 30,
                                color: Colors.teal.shade900,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 15),
                  Container(
                    width: 210,
                    height: 330,
                    decoration: BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Image.asset(
                                'assets/plant55.png',
                                width: 400,
                                height: 230,
                              ),
                            ),
                            Positioned(
                              top: 5,
                              left: 150,
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.favorite_outline),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text("Dracaena"),
                        ),
                        SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Row(
                            children: [
                              Text(
                                "\$581",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              Text("USD", style: TextStyle(fontSize: 18)),
                              SizedBox(width: 60),
                              Icon(
                                Icons.add_circle,
                                size: 30,
                                color: Colors.teal.shade900,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20),
        child: SizedBox(
          width: 350,
          height: 75,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: BottomAppBar(
              color: Colors.teal.shade900,
              child: Padding(
                padding: const EdgeInsets.only(top: 12),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.home_filled, size: 28, color: Colors.grey),
                    Icon(Icons.favorite_border, size: 28, color: Colors.grey),
                    Icon(
                      Icons.qr_code_scanner_outlined,
                      size: 28,
                      color: Color.fromARGB(255, 248, 221, 142),
                    ),
                    Icon(
                      Icons.shopping_bag_outlined,
                      size: 28,
                      color: Colors.grey,
                    ),
                    Icon(
                      Icons.perm_identity_sharp,
                      size: 28,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
