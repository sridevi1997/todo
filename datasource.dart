import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:sridevi_post/models/api.dart';
import 'package:dio/dio.dart';
//import 'package:flutter/foundation.dart';
import 'package:sridevi_post/models/todo.dart';

class Service{
 fetchTodoList(http.Client client)async {
  var response = await Dio().get(Api.URL);
  return response.data;
  //return compute(parseTodoList, response.body);
 }
 List<Todo> parseTodos(String responseBody) {
  final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();

  return parsed.map<Todo>((json) => Todo.fromJson(json)).toList();
 }

}

