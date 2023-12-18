import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:itan/constants.dart';
import 'package:itan/screens/story_details.dart';

class HomeScreen extends StatefulWidget {
  static String id = "/home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        centerTitle: false,
        title: Text(
          "Home",
          style: GoogleFonts.lora(fontWeight: FontWeight.w600),
        ),
        actions: [
          IconButton(
              onPressed: null,
              icon: Icon(
                Icons.search,
                color: Colors.black,
              ))
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Last Read",
              style: mediumText(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            GestureDetector(
              onTap: ()=> Navigator.pushNamed(context, StoryDetails.id),
              child: Container(
                width: double.infinity,
                height: 160,
                margin: EdgeInsets.only(top: 16),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                      blurRadius: 0.6,
                      spreadRadius: 0.5,
                      color: const Color.fromARGB(117, 255, 111, 0))
                ], color: Colors.white, borderRadius: BorderRadius.circular(8)),
                child: Row(
                  children: [
                    Expanded(
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Hero(
                            tag: "image",
                            child: Image.asset(
                              "images/noah.jpeg",
                              height: 150,
                              width: 150,
                              fit: BoxFit.cover,
                            ),
                          )),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "The story of Noah",
                            style: mediumText(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Container(
                            height: 10,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: Colors.amber[200],
                                borderRadius: BorderRadius.circular(8)),
                            child: Container(
                              height: 10,
                              width: 50,
                              decoration: BoxDecoration(
                                  color: Colors.green[800],
                                  borderRadius: BorderRadius.circular(8)),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ), 
            SizedBox(
              height: 12,
            ),
            Row(
              children: [
                Text(
              "You may also like",
              style: mediumText(fontSize: 20, fontWeight: FontWeight.w600),
            ),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
          currentIndex: _currentIndex,
          onTap: (value) => setState(() {
                _currentIndex = value;
              }),
          selectedItemColor: Colors.green[600],
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_outline), label: "Favorites"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings_outlined), label: "Settings"),
          ]),
    );
  }
}
