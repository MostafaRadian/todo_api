import 'dart:convert';

import 'package:http/http.dart' as http;
class TaskServices{
  var url = Uri.parse('https://dummyjson.com/todos');

  getData() async{
    http.Response response= await http.get(url);
    Map<String, dynamic> data = jsonDecode(response.body);
    print(data['todos'][0]);
  }
}