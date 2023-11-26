import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        elevation: 0,
        leading: Icon(null),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.shopping_basket,
                color: Colors.grey[800],
              ))
        ],
      ),
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Food Delivery",
                  style: TextStyle(
                      color: Colors.grey[80],
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 50,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Category(true, "Pizza"),
                      Category(false, "Burgers"),
                      Category(false, "Kebab"),
                      Category(false, "Desert"),
                      Category(false, "Salas"),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              "Free Delivery",
              style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
              child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Item("assets/images/one.jpg"),
                SizedBox(
                  height: 10,
                ),
                Item("assets/images/two.jpg"),
                SizedBox(
                  height: 10,
                ),
                Item("assets/images/one.jpg"),
              ],
            ),
          )),
          SizedBox(
            height: 30,
          ),
        ],
      )),
    );
  }
}

Widget Category(isActive, title) {
  return AspectRatio(
    aspectRatio: isActive ? 3 : 2.0 / 1,
    child: Container(
      margin: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        color: isActive ? Colors.yellow[700] : Color(0xffffffff),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Center(
          child: Text(
        title,
        style: TextStyle(
            color: isActive ? Colors.white : Colors.grey[800],
            fontSize: 18,
            fontWeight: isActive ? FontWeight.bold : FontWeight.w100),
      )),
    ),
  );
}

Widget Item(image) {
  return AspectRatio(
    aspectRatio: 1 / 1.2,
    child: MaterialButton(
      onPressed: () {},
      child: Container(
        margin: EdgeInsets.only(right: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.fill,
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(begin: Alignment.bottomCenter, stops: [
                .2,
                .9
              ], colors: [
                Colors.black.withOpacity(.9),
                Colors.black.withOpacity(.3),
              ])),
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.favorite,
                        color: Colors.red,
                      ),
                    )),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "\$ 15.00",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Vegetarian Pizza",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
