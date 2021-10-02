import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Call"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildListTile(
                title: "Gordao", asset: "assets/fb.jpg", time: "9 pm", link: "https://api.whatsapp.com/send?phone=5511950402404"),
            SizedBox(
              height: 15,
            ),
            buildListTile(
                title: "Pedro", asset: "assets/fusa.png", time: "7 pm", link: "https://api.whatsapp.com/send?phone=18478903233"),
          ],
        ),
      ),
    );
  }

  Widget buildListTile(
      {@required String title, @required String asset, @required String time, @required String link}) {
    return InkWell(
      onTap: (){
         launch(link);
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        height: 60,
        decoration: BoxDecoration(
          color: Colors.blue,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 4,
              spreadRadius: 3,
            ),
          ],
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            image: AssetImage(asset),
            fit: BoxFit.cover,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(asset),
                  fit: BoxFit.cover,
                  // colorFilter: ColorFilter.(),
                ),
              ),
            ),
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.white,
                shadows: [
                  BoxShadow(
                    color: Colors.black,
                    spreadRadius: 10,
                    blurRadius: 4,
                  ),
                ],
              ),
            ),
            Container(
              width: 50,
              child: Text(
                time,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  shadows: [
                    BoxShadow(
                      color: Colors.black,
                      spreadRadius: 10,
                      blurRadius: 4,
                    ),
                  ],
                ),
              ),
            ),
          ],
          // tileColor: Colors.blue,
          // title: Text(
          //   title,
          //   style: TextStyle(
          //     fontWeight: FontWeight.bold,
          //     fontSize: 18,
          //   ),
          // ),
          // leading: Container(
          //   height: 50,
          //   width: 50,
          //   decoration: BoxDecoration(
          //     shape: BoxShape.circle,
          //     image: DecorationImage(
          //       image: AssetImage(asset),
          //       fit: BoxFit.cover,
          //     ),
          //   ),
          // ),
          // trailing: Text(
          //   time,
          //   style: TextStyle(fontWeight: FontWeight.bold),
          // ),
        ),
      ),
    );
  }
}
