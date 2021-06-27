import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

List<dynamic> lst = [1, 2, 3, 4, 5, 6];

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 15),
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Items",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[800],
                        fontSize: 25),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20.0),
              height: 250,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  makeItem(
                      image: 'assets/a.jpg',
                      title: 'Apple Laptop',
                      subtitle: '5.0 (Reviews)'),
                  makeItem(
                      image: 'assets/b.jpg',
                      title: 'MacBook Pro',
                      subtitle: '5.0 (Reviews)'),
                  makeItem(
                      image: 'assets/c.jpg',
                      title: 'Iphone Laptop ',
                      subtitle: '5.0 (Reviews)'),
                  makeItem(
                      image: 'assets/d.jpg',
                      title: 'Iphone 12',
                      subtitle: '5.0 (Reviews)'),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "More Categories",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[800],
                        fontSize: 25),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 80,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  AspectRatio(
                    aspectRatio: 2 / 1,
                    child: Container(
                      margin: EdgeInsets.only(right: 15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white),
                      child: Icon(Icons.power),
                    ),
                  ),
                  AspectRatio(
                    aspectRatio: 2 / 1,
                    child: Container(
                      margin: EdgeInsets.only(right: 15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white),
                      child: Icon(Icons.offline_bolt),
                    ),
                  ),
                  AspectRatio(
                    aspectRatio: 2 / 1,
                    child: Container(
                      margin: EdgeInsets.only(right: 15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white),
                      child: Icon(Icons.mood_outlined),
                    ),
                  ),
                  AspectRatio(
                    aspectRatio: 2 / 1,
                    child: Container(
                      margin: EdgeInsets.only(right: 15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white),
                      child: Icon(Icons.loyalty),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Popular Itiems",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[800],
                        fontSize: 25),
                  ),
                ],
              ),
            ),
            Container(
                child: GridView.count(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    crossAxisCount: 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    children: List.generate(lst.length, (index) {
                      return Container(
                        height: 250,
                        child: ListView(
                          children: <Widget>[
                            makeItem(
                                image: 'assets/e.jpg',
                                title: 'Samsung Note 20',
                                subtitle: '5.0 (Reviews)'),
                            makeItem(
                                image: 'assets/f.jpg',
                                title: 'PSP5',
                                subtitle: '5.0 (Reviews)'),
                            makeItem(
                                image: 'assets/h.jpg',
                                title: 'Apple HomePod ',
                                subtitle: '5.0 (Reviews)'),
                            makeItem(
                                image: 'assets/i.jpg',
                                title: 'Apple Watch Series 7',
                                subtitle: '5.0 (Reviews)'),
                            makeItem(
                                image: 'assets/c.jpg',
                                title: 'Iphone Laptop ',
                                subtitle: '5.0 (Reviews)'),
                            makeItem(
                                image: 'assets/d.jpg',
                                title: 'Iphone 12',
                                subtitle: '5.0 (Reviews)'),
                          ],
                        ),
                      );
                    }))),
          ],
        ),
      ),
    );
  }

  Widget makeItem({image, title, subtitle}) {
    return Container(
      width: 300,
      child: Card(
        child: Wrap(
          children: <Widget>[
            Image.asset(image),
            ListTile(
                title: Text(
                  title,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[800],
                      fontSize: 18),
                ),
                subtitle: Row(
                  children: [
                    Icon(
                      Icons.star,
                      size: 10,
                      color: Colors.yellow,
                    ),
                    Icon(
                      Icons.star,
                      size: 10,
                      color: Colors.yellow,
                    ),
                    Icon(
                      Icons.star,
                      size: 10,
                      color: Colors.yellow,
                    ),
                    Icon(
                      Icons.star,
                      size: 10,
                      color: Colors.yellow,
                    ),
                    Text(subtitle),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
