import 'package:flutter/material.dart';

class MyHomeWork1 extends StatefulWidget {
  const MyHomeWork1({super.key});

  @override
  State<MyHomeWork1> createState() => _MyHomeWork1State();
}

class _MyHomeWork1State extends State<MyHomeWork1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ລາຍການສິນຄ້າ',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          children: [
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'ສິນຄ້າ 1',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      '10,000 ກີບ',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.red,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text('A product detail page (PDP) is a web page \n' +
                        'on an eCommerce site that presents the description \n' +
                        'of a specific product in view. The details displayed \n' +
                        'often include size, color, price, shipping information, \n' +
                        'reviews, and other relevant information customers may want \n' +
                        ' to know before making a purchase.'),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'ສິນຄ້າ 2',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      '50,000 ກີບ',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.red,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text('A product detail page (PDP) is a web page \n' +
                        'on an eCommerce site that presents the description \n' +
                        'of a specific product in view. The details displayed \n' +
                        'often include size, color, price, shipping information, \n' +
                        'reviews, and other relevant information customers may want \n' +
                        ' to know before making a purchase.'),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
