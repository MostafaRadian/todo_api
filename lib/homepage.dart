import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
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
        body: ListView.separated(
          itemBuilder: (context, index) => todoItem(),
          itemCount: 3,
          separatorBuilder: (context, index) => const SizedBox(
            height: 10,
          ),
        ));
  }
}

Widget? todoItem() => Container(
      decoration: BoxDecoration(
        color: Colors.white70,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          const Text(''),
          IconButton(onPressed: () {}, icon: const Icon(Icons.check))
        ],
      ),
    );
