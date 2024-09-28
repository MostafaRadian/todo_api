import 'dart:convert';

import 'package:http/http.dart' as http;
class TaskServices{

  getData() async{
    http.Response response= await http.get(Uri.parse('https://dummyjson.com/todos'));
    Map<String, dynamic> data = jsonDecode(response.body);
   return data;
  }

  postData({required String taskName })async{
    http.Response response= await http.post(Uri.parse('https://dummyjson.com/todos'),body: {
      "todo": taskName,

    });

  }
}