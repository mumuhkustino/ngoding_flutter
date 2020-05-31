import 'dart:convert';
import 'package:http/http.dart' as http;

class UserPostResult {
  String id;
  String name;
  String job;
  String createdAt;

  UserPostResult({this.id, this.name, this.job, this.createdAt});

  factory UserPostResult.createPostResult(Map<String, dynamic> object) {
    return UserPostResult(
        id: object['id'],
        name: object['name'],
        job: object['job'],
        createdAt: object['createdAt']);
  }

  static Future<UserPostResult> connectToAPI(String name, String job) async {
    String apiURL = "https://reqres.in/api/users";

    var apiResult = await http.post(apiURL, body: {"name": name, "job": job});
    var jsonObject = json.decode(apiResult.body);

    return UserPostResult.createPostResult(jsonObject);
  }
}
