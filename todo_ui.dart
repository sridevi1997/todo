import 'package:flutter/material.dart';
import 'package:sridevi_post/models/todo.dart';

class TodoUi extends StatelessWidget {
  List<Todo> todos;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: todos.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: EdgeInsets.all(8.0),
            child: Card(
              child: ListTile(
                leading: Container(
                  margin: EdgeInsets.only(top: 16.0),
                  child: Text(
                    todos[index].userId.toString(),
                    style: TextStyle(
                        fontWeight: FontWeight.normal, color: Colors.black54),
                  ),
                ),
                title: Row(
                  children: <Widget>[
                    Text(
                      "ID:",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 4.0,
                    ),
                    Text(
                      todos[index].id.toString(),
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.redAccent),
                    )
                  ],
                ),
                subtitle: Container(
                  margin: EdgeInsets.symmetric(vertical: 4.0),
                  child: Text(
                    todos[index].title.toUpperCase(),
                    style: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Colors.blueAccent),
                  ),
                ),
                trailing: IconButton(icon: Icon(Icons.arrow_forward_ios),
                  onPressed: (){},
                )
              ),
            ),
          );
        });

  }
}
