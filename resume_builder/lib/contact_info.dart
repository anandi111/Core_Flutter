import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'contact_page.dart';
import 'logic.dart';
import 'photo_page.dart';

class ContactInfo extends StatefulWidget {
  const ContactInfo({Key? key}) : super(key: key);

  @override
  _ContactInfoState createState() => _ContactInfoState();
}

class _ContactInfoState extends State<ContactInfo> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: 450,
                  height: 250,
                  decoration: BoxDecoration(
                    color: Colors.indigoAccent,
                    gradient: LinearGradient(colors: [conGradOne, conGradTwo]),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Contact Information",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                      TabBar(
                        tabs: [
                          Tab(
                            text: "Contact",
                          ),
                          Tab(
                            text: "Photo",
                          ),
                        ],
                        indicatorColor: Colors.white,
                        indicatorSize: TabBarIndicatorSize.label,
                      )
                    ],
                  ),
                ),
                Positioned(
                    top: 70,
                    left: 10,
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        CupertinoIcons.left_chevron,
                        color: Colors.white,
                      ),
                    )),
                Positioned(
                  top: 220,
                  child: Container(
                    width: 412,
                    height: 250,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30)),
                  ),
                ),
              ],
            ),
            Expanded(
                child: TabBarView(children: [
              Contact_Page(),
              Photo_Page(),
            ])),
          ],
        ),
      ),
    );
  }
}
