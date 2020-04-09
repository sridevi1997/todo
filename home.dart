import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:sridevi_post/data/datasource.dart';
import 'package:sridevi_post/models/api.dart';
import 'package:sridevi_post/models/todo.dart';
import 'package:http/http.dart' as http;
import 'package:sridevi_post/screens/todo_ui.dart';

class HomePage extends StatefulWidget{
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
  Service service;


   List<Todo> todos;
   int startId = 0;
   bool isLoading = false;


   @override
   void initState() {
     super.initState();
     isLoading = true;
     todos=[];
   }

   @override
   void onTodoFetchCompleted(List<Todo> items) {
     setState(() {
       todos = items;
       isLoading = false;
     });
   }

   service.fetchTodoList(http.Client client);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Task Todo"),
        ),
      ),
      body: TodoUi(),

    );
  }

}