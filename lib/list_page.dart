// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  final List<String> entries = ['1', '2', '3', '4', '5', '6'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('リスト'),
      ),
      body: ListView.separated(
        itemCount: entries.length,
        itemBuilder: (BuildContext context, int index) {
          return Center(
              child: Container(
                  color: Colors.yellow,
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Entry ${entries[index]}',
                    style: const TextStyle(fontSize: 30),
                  )));
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(
          color: Colors.black,
        ),
      ),
    );
  }
}
