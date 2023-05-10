import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final double paragraphMargin = 30.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mahdiaroji - 201011400232 - UTS'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 10.0),
          Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: ClipOval(
              child: Image.network(
                'komok gue.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 10.0),
          Text(
            'Shoes',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 200.0),
                  child: _buildRectangle(index),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRectangle(int index) {
    List<String> images = [
      'sepatu satu.png',
      'sepatu dua.png',
      'sepatu satu.png',
      'sepatu dua.png',
      'sepatu satu.png',
    ];

    List<List<String>> texts = [
      ['Nike SB Zoom Blazer', 'Mid Premium', '  ', '28,795'],
      ['Nike Air Zoom Pegasus', 'Mens Rood Running Shoes', ' ', '29,995'],
      ['Nike ZoomX Vaporfly', 'Mens Road Racing Shoes', ' ', '19,695'],
      ['Nike Ait Force 1 S50', 'Older Kids Shoe', '1 Colour', '36,296'],
      ['Nike Waffle One', 'Mens Shoes', ' ', '28,295'],
    ];

    List<Color> colors = [
      Colors.purpleAccent,
      Colors.blueGrey,
      Colors.pinkAccent,
      Colors.grey,
      Colors.orangeAccent,
    ];

    return Container(
      width: 250,
      height: 250,
      decoration: BoxDecoration(
        color: colors[index],
        borderRadius: BorderRadius.circular(10.0),
      ),
      margin: EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(texts[index].length, (i) {
                return Padding(
                  padding: EdgeInsets.fromLTRB(50.0, 10.0, 10.0, 0.0),
                  child: Text(
                    texts[index][i],
                    style: TextStyle(
                      fontSize: 16 + ((texts[index].length - 1 - i) * 2),
                      color: Colors.white,
                    ),
                  ),
                );
              }),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0.0, 50.0, 50.0, 50.0),
            child: Image.network(
              images[index],
              width: 150,
              height: 150,
            ),
          ),
        ],
      ),
    );
  }
}
