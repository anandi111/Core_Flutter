import 'dart:developer';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

final TextEditingController _namecantroller = TextEditingController();
String? name;
bool show = false;

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Multiplication Table"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: _namecantroller,
                // validator: (val) {
                //   if (val!.isEmpty) {
                //     return "Enter Any Number";
                //   }
                //   return null;
                // },
                // onFieldSubmitted: (val) {
                //   name = val as int?;
                // },
                decoration: InputDecoration(
                  focusColor: Colors.blueAccent.shade700,
                  labelStyle:
                      TextStyle(fontSize: 20, color: Colors.blue.shade700),
                  label: const Text("Enter Any Number"),
                  hintText: "Enter any 1 number from 1 to 100 here",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              CupertinoButton(
                color: Colors.blue,
                onPressed: () {
                  setState(() {
                    show = true;
                    name = _namecantroller.text;
                  });
                  log("Number $name");
                  log("Bool $show");
                },
                child: const Text(
                  "GET TABLE",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Divider(
                height: 3,
                color: Colors.black,
              ),
              show
                  ? SizedBox(
                      height: 500,
                      child: (name != null)
                          ? ListView.builder(
                              itemCount: 11,
                              itemBuilder: (context, index) {
                                return Center(
                                  child: SizedBox(
                                    height: 50,
                                    child: Text(
                                        "$name * ${index + 1} = ${(int.parse(name!) * (index + 1))}",
                                        style: const TextStyle(
                                          fontSize: 30,
                                        )),
                                  ),
                                );
                              })
                          : const SizedBox(),
                    )
                  : const SizedBox(
                      height: 10,
                    ),
              const Divider(
                height: 3,
                color: Colors.black,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
