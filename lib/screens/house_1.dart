import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:homeapp/screens/details.dart';
import 'package:homeapp/screens/wish_list.dart';
import 'package:homeapp/widget/tabbar.dart';

class House1 extends StatefulWidget {
  const House1({super.key});

  @override
  State<House1> createState() => _HouseState();
}

class _HouseState extends State<House1> {
  bool isFavorite = false;
  List<String> wishlist = []; 

  
  void toggleFavorite() {
    setState(() {
      isFavorite = !isFavorite;
    });

    if (isFavorite) {
    
      wishlist.add("RANCH HOME");
      print("Item added to wishlist!");
    } else {
    
      wishlist.remove("RANCH HOME");
      print("Item removed from wishlist!");
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "Location",
                    style: TextStyle(
                      color: Color.fromARGB(255, 160, 202, 230),
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "Los Angeles, CA",
                    style: TextStyle(
                      color: Color(0xff0F2F44),
                      fontSize: 15,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 200),
                    child: IconButton(
                      icon: const Icon(
                        Icons.list,
                        color: Colors.black,
                        size: 30,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => WishlistScreen(
                              wishlist: wishlist,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "Discover Best",
                    style: TextStyle(
                      color: Color(0xff0F2F44),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "Suitable Property",
                    style: TextStyle(
                      color: Color(0xff0F2F44),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Container(
                height: 50,
                width: double.infinity,
                child: Tabbar(),
              ),
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 15)),
                  Text(
                    "Best for you",
                    style: TextStyle(
                      color: Color(0xff0F2F44),
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(
                  left: 10,
                ),
                height: 400,
                width: 350,
                decoration: BoxDecoration(
                  color: Color(0xff0E3146),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  Details(), 
                            ),
                          );
                        },
                        child: Image.asset(
                          "assets/images/home.jpg",
                        ),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              right: 170,
                            ),
                            child: Text(
                              "CRAFTSMAN HOUSE",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 150),
                            child: Text(
                              "520 N Btoudry Ave Los Angeles",
                              style: TextStyle(
                                color: Color(0xffEAF1FF),
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 5),
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(20)),
                            child: Align(
                              alignment: Alignment.center,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/images/bed.jpg",
                                    height: 20,
                                    fit: BoxFit.cover,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Text(
                            "4 Beds",
                            style: TextStyle(
                              color: Color(0xffEAF1FF),
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 5), 
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(20)),
                            child: Align(
                              alignment: Alignment.center,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/images/bath.jpg",
                                    height: 20,
                                    fit: BoxFit.cover,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Text(
                            "Bath",
                            style: TextStyle(
                              color: Color(0xffEAF1FF),
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 5), 
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(20)),
                            child: Align(
                              alignment: Alignment.center,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/images/car.png",
                                    height: 20,
                                    fit: BoxFit.cover,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Text(
                            "Garage",
                            style: TextStyle(
                              color: Color(0xffEAF1FF),
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 150),
                child: Text(
                  "Nearby your location",
                  style: TextStyle(
                    color: Color(0xff0F2F44),
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Column(
                children: [
                  Padding(padding: EdgeInsets.only(left: 30)),
                  Container(
                    height: 120,
                    width: 340,
                    decoration: BoxDecoration(
                      color: Color(0xffEAF1FF),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            "assets/images/ranchhouse.jpg",
                            height: 80,
                            width: 80,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(padding: EdgeInsets.only(top: 20)),
                            Row(
                              children: [
                                Text(
                                  "RANCH HOME",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff0F2F44),
                                  ),
                                ),
                                SizedBox(
                                  width: 80,
                                ),
                                GestureDetector(
                                  onTap: toggleFavorite,
                                  child: Icon(
                                    isFavorite
                                        ? Icons.favorite
                                        : Icons.favorite_border,
                                    color:
                                        isFavorite ? Colors.red : Colors.black,
                                    size: 30,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              "520 N Btoudry Ave Los Angeles",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey[700],
                              ),
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 20,
                                  width: 20,
                                  child: Image.asset(
                                    "assets/images/bed.jpg",
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "4 Beds",
                                      style: TextStyle(
                                        fontSize: 9,
                                      ),
                                    ),
                                    Container(
                                      height: 20,
                                      width: 20,
                                      child:
                                          Image.asset("assets/images/bath.jpg"),
                                    ),
                                    Text(
                                      "4 Baths",
                                      style: TextStyle(
                                        fontSize: 9,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      height: 20,
                                      width: 20,
                                      child:
                                          Image.asset("assets/images/car.png"),
                                    ),
                                    Text(
                                      "1 Garage",
                                      style: TextStyle(
                                        fontSize: 9,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
