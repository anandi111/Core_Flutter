import 'dart:convert';
import 'package:api_calling/Models/postmodel.dart';
import 'package:http/http.dart' as http;

class PostAPIHelper {
  PostAPIHelper._();
  static final PostAPIHelper postAPIHelper = PostAPIHelper._();

  Future<Post?> fetchingPost({required int i}) async {
    http.Response response = await http
        .get(Uri.parse("https://jsonplaceholder.typicode.com/posts/${i}"));

    if (response.statusCode == 200) {
      Map decodedData = jsonDecode(response.body);

      // List allPostList = decodedData.map((e) => Post.fromMap(data: e)).toList();
      // print(allPostList[0].id);
      Post post = Post.fromMap(data: decodedData);

      return post;
    }
    return null;
  }
}
