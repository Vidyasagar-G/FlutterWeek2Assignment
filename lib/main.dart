import 'package:flutter/material.dart';
import 'package:week2_assignment/new_event.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<Widget> _list = [
    const Text("Event 1")
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Event Scheduler'),
          backgroundColor: Colors.deepPurpleAccent[700],
        ),
        body: Center(
          child: ListView.builder(
            itemCount: _list.length,
            itemBuilder: (context,index){
              return Container(
                width: 300,
                color: Colors.white,
                margin: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 12.0),
                child: ListTile(
                  title: Center(
                    child: _list[index],
                  ),
                  textColor: Colors.black,
                )
              );
            }
          ),
        ),
        backgroundColor: Colors.deepPurpleAccent[700],
        floatingActionButton: Builder(
          builder: (context) {
            return FloatingActionButton(
              onPressed: () async {
                String newText = await Navigator.of(context).push(MaterialPageRoute(builder: (context) => NewEventScreen()));
                setState(() {
                  _list.add(
                    Text(newText)
                  );
                });
              },
              backgroundColor: Colors.deepPurpleAccent[700],
              child: const Icon(Icons.add),
            );
          }
        ),
      )
    );
  }
}
