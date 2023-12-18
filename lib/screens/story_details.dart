import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:itan/constants.dart';

class StoryDetails extends StatefulWidget {
  static String id = "/story-details";

  @override
  State<StoryDetails> createState() => _StoryDetailsState();
}

class _StoryDetailsState extends State<StoryDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: IconButton(onPressed: ()=> Navigator.pop(context), icon: Icon(Icons.arrow_back_ios)),
        centerTitle: false,
        title: Text(
          "Story Details",
          style: GoogleFonts.lora(fontWeight: FontWeight.w600),
        ),
        actions: [
          IconButton(onPressed: null, icon: Icon(Icons.play_arrow_outlined))
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Expanded(
              flex: 2,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Hero(
                      tag: "image",
                      child: Image.asset("images/noah.jpeg")))),
            SizedBox(
              height: 14,
            ),
            Text(
              "The story of Noah",
              style: mediumText(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 18,
            ),
            Expanded(flex: 3, child: ListView(
              children: [
                Text(
                  noahStory, 
                  style: mediumTextGrey(fontSize: 18, height: 2.0),
                  )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
