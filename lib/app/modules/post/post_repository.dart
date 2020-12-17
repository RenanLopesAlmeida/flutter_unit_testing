import 'dart:convert';

import 'package:flutter_tests/app/modules/post/post.dart';
import 'package:http/http.dart' as http;

class PostRepository {
  Future<Post> fetchPost(http.Client client) async {
    final response =
        await client.get('https://jsonplaceholder.typicode.com/posts/1');

    if (response.statusCode == 200) {
      return Post.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load post');
    }
  }
}
