import 'package:flutter/material.dart';
import 'package:tripbudgeter/about.dart';
import 'package:tripbudgeter/contact.dart';
import 'package:tripbudgeter/home.dart';
import 'package:tripbudgeter/imagesGallery.dart';

void main() {
  runApp(const bottom());
}

class bottom extends StatelessWidget {
  const bottom({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TripBudgeter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int page_index = 0;

  void getIndex(int index) {
    setState(() {
      page_index = index;
    });
  }
  

  List<String> appbarTitle = [
    "Home",
    "About Us",
    "Image Gallery",
    "Contact Us",
  ];

  List<Widget> pages = [
    home(), // Replace with CurrencyConverterScreen(),
    about(), // Replace with rateInfo(),
    imageGallery(), // Replace with CurrencyMarketApp(),
    contact(), // Replace with history(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body:
          Center(),
          bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(255, 255, 191, 93),
        type: BottomNavigationBarType.fixed,
        currentIndex: page_index,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black54,
        onTap: getIndex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: 'About Us'),
          BottomNavigationBarItem(
              icon: Icon(Icons.newspaper), label: 'Image gallery'),
          BottomNavigationBarItem(icon: Icon(Icons.history), label: 'Contact Us'),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
