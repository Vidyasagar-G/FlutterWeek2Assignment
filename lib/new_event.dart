import 'package:flutter/material.dart';

class NewEventScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _NewEventScreenState();

}

class _NewEventScreenState extends State<NewEventScreen>{
  final TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New event"),
        backgroundColor: Colors.deepPurple[700],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 16.0),
            child: TextField(
              decoration: const InputDecoration(
                prefixIcon: Icon(
                  Icons.event,
                  color: Colors.white,
                ),
                filled: true,
                fillColor: Colors.deepPurple,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.deepPurple,width:0.0),
                  borderRadius: BorderRadius.horizontal(left: Radius.circular(30.0), right: Radius.circular(30.0)),
                ),
                hintText: ' Event',
                hintStyle: TextStyle(color: Colors.white)
              ),
              style: TextStyle(color: Colors.white),
              keyboardType: TextInputType.multiline,
              maxLines: null,
              controller: _textEditingController,

            ),
          ),
          Builder(
            builder: (context) {
              return Center(
                child: ElevatedButton(
                      onPressed: (){
                        String newEventText = _textEditingController.text;
                        Navigator.of(context).pop(newEventText);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        shadowColor: Colors.deepPurple[800],
                        fixedSize: const Size(300.0,50.0),
                      ),
                      child: const Text("ADD")
                ),
              );
            }
          ),
        ],
      ),
      backgroundColor: Colors.deepPurpleAccent,
    );
  }


}