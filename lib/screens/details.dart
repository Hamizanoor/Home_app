import 'package:flutter/material.dart';
import 'package:homeapp/screens/wish_list.dart'; // Import WishlistScreen

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  bool isFavorite = false;
  List<String> wishlist = [];

  void toggleFavorite() {
    setState(() {
      isFavorite = !isFavorite;
    });

    if (isFavorite) {
      wishlist.add("CRAFTSMAN HOUSE");
      print("Item added to wishlist!");
    } else {
      wishlist.remove("CRAFTSMAN HOUSE");
      print("Item removed from wishlist!");
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("House Details"),
          toolbarHeight: 40,
          actions: [
            IconButton(
              icon: Icon(Icons.list),
              onPressed: () {
              
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => WishlistScreen(
                        wishlist:
                            wishlist),
                  ),
                );
              },
            ),
          ],
        ),
        body: Column(
    
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 20),
              height: 350,
              width: 350,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(50),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(
                  "assets/images/DETAILS.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 30, top: 10),
              child: Row(
                children: [
                  Text(
                    "CRAFTSMAN HOUSE",
                    style: TextStyle(
                      color: Color(0xff0F2F44),
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(width: 90),
                  GestureDetector(
                    onTap: toggleFavorite,
                    child: Icon(
                      isFavorite ? Icons.favorite : Icons.favorite_border,
                      color: isFavorite ? Colors.red : Colors.black,
                      size: 30,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 30),
              child: Text(
                "520 N Beaudry Ave, Los Angeles",
                style: TextStyle(
                  color: Color(0xff0F2F44),
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 30, top: 10),
              child: Text(
                "Price: 5990000",
                style: TextStyle(
                  color: Color(0xff0F2F44),
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 10,
              ),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(20),
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(20)),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/images/bed.jpg",
                          ),
                        ],
                      ),
                    ),
                  ),
                  Text(
                    "4 Beds",
                    style: TextStyle(
                      color: Color(0xff0F2F44),
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(20),
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(20)),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/images/bath.jpg",
                          ),
                        ],
                      ),
                    ),
                  ),
                  Text(
                    "Bath",
                    style: TextStyle(
                      color: Color(0xff0F2F44),
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(20),
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(20)),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/images/car.png",
                          ),
                        ],
                      ),
                    ),
                  ),
                  Text(
                    "Garage",
                    style: TextStyle(
                      color: Color(0xff0F2F44),
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                  ),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: AssetImage("assets/images/girl.jpg"))),
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: 10,
                      ),
                      child: Text(
                        "Rebecca Tetha",
                        style: TextStyle(
                          color: Color(0xff0F2F44),
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 10,
                      ),
                      child: Text(
                        "Owner Craftsman House",
                        style: TextStyle(
                          color: Color(0xff0F2F44),
                          fontSize: 10,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 80,
                  ),
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.call,
                      color: Colors.blue,
                    ),
                    label: Text(
                      "Call",
                      selectionColor: Colors.blue,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 25, right: 25, top: 10),
              child: Text(
                "Completely redone in 2021. 4 bedrooms. 2 bathrooms. 1 garahe. amazing curb oppeal and enterain areawater vews. Tons of built-ins & extras. ",
                style: TextStyle(
                  color: Color(0xff0F2F44),
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 25, top: 5),
              child: Text(
                "Gallery",
                style: TextStyle(
                  color: Color(0xff0F2F44),
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      left: 20,
                    ),
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.asset(
                        "assets/images/green.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.asset(
                        "assets/images/lamp.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.asset(
                        "assets/images/yellowsofa.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.asset(
                        "assets/images/bathroom.jpg",
                        fit: BoxFit.cover,
                      ),
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
