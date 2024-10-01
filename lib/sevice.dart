import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;
import 'package:todo_api/task_model.dart';

class TaskServices {
  // Future<Map<String, dynamic>> getData() async {
  //   http.Response response = await http.get(Uri.parse('https://dummyjson.com/todos'));
  //
  //   // Decode the response body
  //   Map<String, dynamic> data = jsonDecode(response.body);
  //
  //   // Log the data
  //   log("Data: $data");
  //
  //   // Return the data
  //   return data;
  // }
  //

  postData({required String taskName}) async {
    http.Response response = await http.post(
      Uri.parse('https://dummyjson.com/todos/add'),
      body: {"todo": taskName, "userId": 20},
    );

    if (response.statusCode == 201) {
      log(TaskModel.fromJson(json.decode(response.body)).toString());
    } else {
      log("here error");
      throw Exception("Failed to load post");
    }
  }

  final Dio dio = Dio();
  getDataDio() async {
    Response response =
        await dio.get('https://jsonplaceholder.typicode.com/todos/1');
    TaskModel.fromJson(response.data);
    print(response.data);
    return response.data;
  }

  postDataDio({required String taskName}) async {
    Response response = await dio.post('https://dummyjson.com/todos/add',
        data: {"todo": taskName, "userId": 7});
    print(response.data);
    return response.data;
  }
}
