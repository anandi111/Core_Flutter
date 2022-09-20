import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plateform_converter_application/screens/android%20screens/Screens/add%20contact.dart';
import 'package:plateform_converter_application/screens/android%20screens/Widgets/globals.dart';

class AndroidHomePage extends StatefulWidget {
  const AndroidHomePage({Key? key}) : super(key: key);

  @override
  State<AndroidHomePage> createState() => _AndroidHomePageState();
}

class _AndroidHomePageState extends State<AndroidHomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  PageController _pageController = PageController();
  DateTime? pickedDate;
  TimeOfDay? pickedTime;
  DateTime intialDate = DateTime.now();
  TimeOfDay intialTime = TimeOfDay.now();

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return (Global.isIos == false)
        ? Scaffold(
            appBar: AppBar(
              title: const Text("Plateform Converter"),
              actions: [
                Switch(
                    value: Global.isIos,
                    onChanged: (val) {
                      setState(() {
                        Global.isIos = val;
                      });
                    })
              ],
              bottom: TabBar(
                controller: _tabController,
                onTap: (val) {
                  setState(() {
                    _pageController.animateToPage(val,
                        duration: Duration(microseconds: 800),
                        curve: Curves.bounceInOut);
                  });
                },
                indicatorPadding:
                    const EdgeInsets.only(left: 10, right: 10, bottom: 5),
                tabs: const [
                  Tab(
                    text: "CHARTS",
                  ),
                  Tab(
                    text: "CALLS",
                  ),
                  Tab(
                    text: "STATUS",
                  ),
                ],
              ),
            ),
            floatingActionButton: FloatingActionButton(
              child: const Icon(Icons.add),
              onPressed: () {
                showGeneralDialog(
                    barrierColor: Colors.transparent,
                    context: context,
                    pageBuilder: (context, animation, secondaryAnimation) {
                      return Material(
                        color: Colors.transparent,
                        child: Stack(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.of(context).pop();
                              },
                              child: Container(
                                height: double.infinity,
                                width: double.infinity,
                                color: Color(0xffc4c4c4).withOpacity(0.4),
                              ),
                            ),
                            Positioned(
                              child: Container(
                                width: 100,
                                height: 100,
                                color: Colors.blue,
                              ),
                            )
                          ],
                        ),
                      );
                    });

                /*Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AddContact(),
                    )).then((value) => setState(() {}));*/
              },
            ),
            body: PageView(
              controller: _pageController,
              onPageChanged: (val) {
                setState(() {
                  _tabController.animateTo(val);
                });
              },
              children: [
                ListView.builder(
                  itemCount: ContactList.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(ContactList[index].name),
                      subtitle: Text(ContactList[index].message),
                      onTap: () {
                        showModalBottomSheet(
                            backgroundColor: Colors.transparent,
                            context: context,
                            builder: (context) {
                              return Container(
                                height: 350,
                                width: 250,
                                margin: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white),
                                child: Column(
                                  children: [
                                    const SizedBox(
                                      height: 30,
                                    ),
                                    const CircleAvatar(
                                      radius: 50,
                                      backgroundColor: Colors.grey,
                                      child: Icon(CupertinoIcons.person),
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    Text(
                                      ContactList[index].name,
                                      style: const TextStyle(
                                        fontSize: 18,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    Text(
                                      ContactList[index].message,
                                      style: const TextStyle(
                                        fontSize: 18,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    ElevatedButton(
                                        onPressed: () {},
                                        child: const Text("Send Message")),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    ElevatedButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: const Text("Cancel")),
                                  ],
                                ),
                              );
                            });
                      },
                      leading: const CircleAvatar(
                        radius: 35,
                        backgroundColor: Colors.grey,
                        child: Icon(
                          CupertinoIcons.person,
                        ),
                      ),
                      trailing: Text(
                          "${Random().nextInt(12)} : ${Random().nextInt(60)} am"),
                    );
                  },
                ),
                ListView.builder(
                  itemCount: ContactList.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(ContactList[index].name),
                      subtitle: Text(ContactList[index].message),
                      leading: const CircleAvatar(
                        radius: 35,
                        backgroundColor: Colors.grey,
                        child: Icon(
                          CupertinoIcons.person,
                        ),
                      ),
                      trailing: const Icon(Icons.phone),
                    );
                  },
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          const Text(
                            "date",
                            style: TextStyle(fontSize: 18),
                          ),
                          const Spacer(),
                          Text(
                            "${intialDate.day} // ${intialDate.month} // ${intialDate.year}",
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      InkWell(
                        onTap: () async {
                          pickedDate = await showDatePicker(
                            context: context,
                            initialDate: intialDate,
                            firstDate: DateTime(2000),
                            lastDate: DateTime(2030),
                          );

                          if (pickedDate != null) {
                            setState(() {
                              intialDate = pickedDate!;
                            });
                          }
                        },
                        child: Container(
                          height: 50,
                          color: Colors.blue,
                          width: double.infinity,
                          child: const Center(
                              child: Text(
                            "Change Date",
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          )),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                         const Text(
                            "Time",
                            style: TextStyle(fontSize: 18),
                          ),
                          Spacer(),
                          Text(
                            (intialTime.hour <= 12)
                                ? "${intialTime.hour} // ${intialTime.minute} // ${intialTime.period.name}"
                                : "${intialTime.hour - 12} // ${intialTime.minute} // ${intialTime.period.name}",
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      InkWell(
                        onTap: () async {
                          pickedTime = await showTimePicker(
                            context: context,
                            initialTime: intialTime,
                          );

                          if (intialTime != null) {
                            setState(() {
                              intialTime = pickedTime!;
                            });
                          }
                        },
                        child: Container(
                          height: 50,
                          color: Colors.blue,
                          width: double.infinity,
                          child: const Center(
                              child: Text(
                            "Change Time",
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          )),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        : CupertinoPageScaffold(
            navigationBar: CupertinoNavigationBar(
              leading: Material(
                  child: InkWell(onTap: () {}, child: const Icon(Icons.menu))),
              trailing: CupertinoSwitch(
                  value: Global.isIos,
                  onChanged: (val) {
                    setState(() {
                      Global.isIos = val;
                    });
                  }),
              middle: const Text("Plateform Converter"),
            ),
            child: Column(
              children: [
                Material(
                  child: Container(
                    height: 750,
                    child: ListView.builder(
                      itemCount: ContactList.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text(ContactList[index].name),
                          subtitle: Text(ContactList[index].message),
                          onTap: () {
                            showModalBottomSheet(
                                backgroundColor: Colors.transparent,
                                context: context,
                                builder: (context) {
                                  return Container(
                                    height: 350,
                                    width: 250,
                                    margin: const EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.white),
                                    child: Column(
                                      children: [
                                        const SizedBox(
                                          height: 30,
                                        ),
                                        const CircleAvatar(
                                          radius: 50,
                                          backgroundColor: Colors.grey,
                                          child: Icon(CupertinoIcons.person),
                                        ),
                                        const SizedBox(
                                          height: 15,
                                        ),
                                        Text(
                                          ContactList[index].name,
                                          style: const TextStyle(
                                            fontSize: 18,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 15,
                                        ),
                                        Text(
                                          ContactList[index].message,
                                          style: const TextStyle(
                                            fontSize: 18,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 15,
                                        ),
                                        ElevatedButton(
                                            onPressed: () {},
                                            child: const Text("Send Message")),
                                        const SizedBox(
                                          height: 15,
                                        ),
                                        ElevatedButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            child: const Text("Cancel")),
                                      ],
                                    ),
                                  );
                                });
                          },
                          leading: const CircleAvatar(
                            radius: 35,
                            backgroundColor: Colors.grey,
                            child: Icon(
                              CupertinoIcons.person,
                            ),
                          ),
                          trailing: Text(
                              "${Random().nextInt(12)} : ${Random().nextInt(60)} am"),
                        );
                      },
                    ),
                  ),
                ),
                const Spacer(),
                CupertinoTabBar(items: const [
                  BottomNavigationBarItem(
                      icon: Icon(CupertinoIcons.chat_bubble_2)),
                  BottomNavigationBarItem(icon: Icon(CupertinoIcons.phone)),
                  BottomNavigationBarItem(icon: Icon(CupertinoIcons.star)),
                ])
              ],
            ));
  }
}
