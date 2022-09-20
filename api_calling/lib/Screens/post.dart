import 'package:api_calling/Helpers/posthelper.dart';
import 'package:api_calling/Models/postmodel.dart';
import 'package:flutter/material.dart';

class PostScreen extends StatefulWidget {
  const PostScreen({Key? key}) : super(key: key);

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  int index = 1;
  TextEditingController postController = TextEditingController();
  bool ontap = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Post Data"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              TextField(
                onSubmitted: (value) {
                  setState(() {
                    index = int.parse(postController.text);
                  });
                },
                onTap: () {
                  setState(() {
                    ontap = true;
                  });
                },
                controller: postController,
                decoration: InputDecoration(
                    label: Text("Enter Id.."),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              (ontap == true)
                  ? FutureBuilder(
                      future:
                          PostAPIHelper.postAPIHelper.fetchingPost(i: index),
                      builder: (context, snapshot) {
                        if (snapshot.hasError) {
                          return Center(
                            child: Text("Error Found :- ${snapshot.error}"),
                          );
                        } else if (snapshot.hasData) {
                          Post? data = snapshot.data as Post?;
                          return Card(
                              child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Id - ${data!.id}"),
                                Text("User Id - ${data.useId}"),
                                Text("Title - ${data.title}"),
                                Text("Body - ${data.body}"),
                              ],
                            ),
                          ));
                        }
                        return CircularProgressIndicator();
                      },
                    )
                  : Center(
                      child: Text("Please enter id into textfield first."),
                    )
            ],
          ),
        ),
      ),
    );
  }
}
