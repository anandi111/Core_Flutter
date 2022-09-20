/*
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController =
  TabController(length: Item.length, vsync: this);
  int value = 0;
  List Item = [
    {"icon": const Icon(Icons.home), "label": "Home", "color": Colors.amber},
    {"icon": const Icon(Icons.search), "label": "Search", "color": Colors.teal},
    {"icon": const Icon(Icons.add), "label": "Add", "color": Colors.green},
    {
      "icon": const Icon(Icons.card_travel_sharp),
      "label": "Cart",
      "color": Colors.red
    },
    {
      "icon": const Icon(Icons.settings),
      "label": "Setting",
      "color": Colors.orange
    },
  ];
  int countNavBar = 0;

  void initState() {
    super.initState();
    // _tabController = TabController(length: Item.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Plateform_Converter_App"),
        centerTitle: true,
        bottom: TabBar(
            controller: _tabController,
            tabs: List.generate(Item.length, (index) {
              return Tab(
                icon: Item[index]["icon"],
                text: Item[index]["label"],
              );
            })
          */
/*Tab(
              icon: Icon(Icons.call),
              text: "Call",
            ),*/ /*

          // Tab(
          //   icon: Icon(Icons.call_made),
          //   text: "Outgoing",
          // ),
          // Tab(
          //   icon: Icon(Icons.call_received),
          //   text: "Incoming",
          // ),

        ),
      ),
      // floatingActionButton: Row(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //     FloatingActionButton(
      //       onPressed: () {
      //         if (value == 0) {
      //           value = 2;
      //           _tabController.animateTo(value);
      //         } else {
      //           _tabController.animateTo(--value);
      //         }
      //       },
      //       child: Icon(Icons.keyboard_double_arrow_left),
      //     ),
      //     SizedBox(
      //       width: 20,
      //     ),
      //     FloatingActionButton(
      //       onPressed: () {
      //         if (value == 2) {
      //           value = 0;
      //           _tabController.animateTo(value);
      //         } else {
      //           _tabController.animateTo(++value);
      //         }
      //       },
      //       child: Icon(Icons.keyboard_double_arrow_right),
      //     )
      //   ],
      // ),
      */
/* floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 12,
        child: new Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.menu),
              color: Colors.transparent,
              onPressed: () {},
            ),
          ],
        ),
        color: Colors.blue,
      ),*/ /*

      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: countNavBar,
          onTap: (val) {
            setState(() {
              countNavBar = val;
            });
          },
          backgroundColor: Colors.indigo,
          items: List.generate(
              Item.length,
                  (index) => BottomNavigationBarItem(
                  icon: Item[index]["icon"], label: Item[index]["label"]))),
      body: PageView(
          children: List.generate(
              Item.length,
                  (index) => Container(
                color: Item[index]["color"],
                child: Center(
                  child: Text(Item[index]["label"]),
                ),
              ))
        */
/*Center(
          child: Text("2"),
        ),*/ /*

        // Center(
        //   child: Text("2"),
        // ),
        // Center(
        //   child: Text("3"),
        // ),
      ),
    );
  }
}
*/
