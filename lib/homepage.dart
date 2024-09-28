import 'package:flutter/material.dart';
import 'package:todo_api/sevice.dart';

class HomePage extends StatelessWidget {
  const   HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              print(TaskServices().getData());
            },
            icon: const Icon(
              Icons.list,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          title: const Text(
            'Todo List',
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
          backgroundColor: Colors.blue,
        ),
        body: ListView.builder(
          itemBuilder: (context, index) => todoItem(),
          itemCount: 3,
        ));
  }
}

Widget? todoItem() => Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white70,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 7,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Expanded(
                child: Text(
                  'My first task askljndklasjndjknasjkdnjkasnd',
                  style: TextStyle(fontSize: 18),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
              ),
              const Spacer(),
              IconButton(onPressed: () {}, icon: const Icon(Icons.check))
            ],
          ),
        ),
      ),
    );
