import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_tests/app/modules/post/post.dart';
import 'package:flutter_tests/app/modules/post/post_repository.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/mockito.dart';

class MockClient extends Mock implements http.Client {}

main() {
  PostRepository postRepository;
  setUp(() {
    postRepository = PostRepository();
  });
  group('fetchPosts', () {
    test('returns a Post if the http call completes successfully', () async {
      final client = MockClient();

      //successful response
      when(client.get('https://jsonplaceholder.typicode.com/posts/1'))
          .thenAnswer((_) async => http.Response('{"id": "1"}', 200));

      expect(await postRepository.fetchPost(client), isA<Post>());
    });
  });
}
