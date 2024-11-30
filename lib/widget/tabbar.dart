import 'package:flutter/material.dart';

class Tabbar extends StatefulWidget {
  const Tabbar({Key? key}) : super(key: key);

  @override
  _TabbarState createState() => _TabbarState();
}

class _TabbarState extends State<Tabbar> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int current = 0;

  final List<String> items = [
    "House",
    "Apartment",
    "Flat",
    "painthouse",
    "Camp",
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: items.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 50,
              width: double.infinity,
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: items.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (ctx, index) {
                  return Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            current = index;
                            _tabController.animateTo(index);
                          });
                        },
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 300),
                          margin: EdgeInsets.all(5),
                          width: 74,
                          height: 37,
                          decoration: BoxDecoration(
                            color: current == index
                                ? Color(0xff323232)
                                : Color(0xffEAF1FF),
                            borderRadius: current == index
                                ? BorderRadius.circular(10)
                                : BorderRadius.circular(10),
                            border: current == index
                                ? Border.all(
                                    color: Color(0xff0f2f44),
                                    width: 2,
                                  )
                                : null,
                          ),
                          child: Center(
                            child: Text(
                              items[index],
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: current == index
                                    ? Colors.white
                                    : Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: <Widget>[
                  // Replace these with your actual screens/widgets
                  // NikeScreen("Nike Screen"),
                  // PumaScreen("Puma Screen"),
                  // AdidasScreen("Adidas Screen"),
                  // Reebok("ReebokScreen"),
                  // FilaScreen("Fila Screen"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}