import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'add_page.dart';
import 'logic.dart';

class DetailPage extends StatefulWidget {
  DetailPage({Key? key, required this.conName, required this.moNum})
      : super(key: key);
  String conName = "";
  String moNum = "";
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contacts"),
        actions: [Icon(Icons.more_vert_outlined)],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Container(
              height: 100,
              width: 100,
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.grey),
              child: Icon(
                CupertinoIcons.person_solid,
                size: 50,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              widget.conName,
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              widget.moNum,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 1,
              color: Colors.black,
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.green),
                  child: Icon(
                    Icons.phone,
                    color: Colors.white,
                  ),
                ),
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.amber),
                  child: Icon(
                    Icons.message,
                    color: Colors.white,
                  ),
                ),
                Container(
                  height: 60,
                  width: 60,
                  decoration:
                      BoxDecoration(shape: BoxShape.circle, color: Colors.cyan),
                  child: Icon(
                    Icons.mail,
                    color: Colors.white,
                  ),
                ),
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.orange),
                  child: Icon(
                    Icons.share,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 1,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
