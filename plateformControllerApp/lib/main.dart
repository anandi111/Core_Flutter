import 'package:flutter/material.dart';
import 'package:plateformcontrollerapp/DateTime%20Picker/date%20time%20picker.dart';
import 'package:plateformcontrollerapp/Railway%20Recruitement%20Form/stepper.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: DateTimePage(),
  ));
}

/*void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: RailForm(),
  ));
}*/

/*
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
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
  late final TabController _tabController =
      TabController(length: Item.length, vsync: this);
  final PageController _pageController = PageController();
  TextEditingController iconNameController = TextEditingController();
  TextEditingController labelNameController = TextEditingController();
  TextEditingController colorNameController = TextEditingController();
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

  @override
  void initState() {
    super.initState();
    // _tabController = TabController(length: Item.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Plateform_Converter_App"),
        centerTitle: true,
        bottom: TabBar(
            onTap: (val) {
              setState(() {
                countNavBar = val;
                _pageController.animateToPage(val,
                    duration: const Duration(milliseconds: 800),
                    curve: Curves.bounceInOut);
              });
            },
            controller: _tabController,
            tabs: List.generate(Item.length, (index) {
              return Tab(
                icon: Item[index]["icon"],
                text: Item[index]["label"],
              );
            })),
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: countNavBar,
          onTap: (val) async {
            setState(() {
              countNavBar = val;
              _pageController.animateToPage(val,
                  duration: const Duration(milliseconds: 800),
                  curve: Curves.bounceInOut);
              _tabController.animateTo(val);
            });
          },
          backgroundColor: Colors.indigo,
          items: List.generate(
              Item.length,
              (index) => BottomNavigationBarItem(
                  icon: Item[index]["icon"], label: Item[index]["label"]))),
      body: PageView(
          controller: _pageController,
          onPageChanged: (val) {
            setState(() {
              countNavBar = val;
              _tabController.animateTo(val);
            });
          },
          children: List.generate(
              Item.length,
              (index) => Container(
                    color: Item[index]["color"],
                    child: Center(
                      child: Text(Item[index]["label"]),
                    ),
                  ))),
    );
  }
}
*/
