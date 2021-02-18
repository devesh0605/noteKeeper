import 'package:flutter/material.dart';

class NoteList extends StatefulWidget {
  @override
  _NoteListState createState() => _NoteListState();
}

class _NoteListState extends State<NoteList> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notes'),
        centerTitle: true,
      ),
      body: getNoteListView(),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          print("Float");
        },
        tooltip: 'Tooltip text',
        child: Icon(Icons.add),
      ),
    );
  }

  ListView getNoteListView() {
    TextStyle titleStyle = Theme.of(context).textTheme.subtitle1;
    return ListView.builder(
      itemCount: count,
      itemBuilder: (BuildContext context, int position) {
        return Card(
          color: Colors.white,
          elevation: 2.0,
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.yellow,
              child: Icon(Icons.keyboard_arrow_right),

            ),
            title: Text('Dummy Title',style: titleStyle,),
            subtitle: Text('Dummy Data'),
            trailing: Icon(Icons.delete,color: Colors.grey,),
            onTap: (){
              print("TAP TAP TAP");
            },

          ),
        );
      },
    );
  }
}
