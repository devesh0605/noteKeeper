import 'package:flutter/material.dart';

class NoteDetail extends StatefulWidget {
  final String appBarTitle;

  NoteDetail(this.appBarTitle);

  @override
  _NoteDetailState createState() => _NoteDetailState(this.appBarTitle);
}

class _NoteDetailState extends State<NoteDetail> {
  String appBarTitle;

  _NoteDetailState(this.appBarTitle);

  static var priorities = ['High', 'Low'];
  TextEditingController title = TextEditingController();
  TextEditingController description = TextEditingController();

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.headline6;
    return WillPopScope(
      // ignore: missing_return
      onWillPop: () {
        moveToLastScreen();
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(appBarTitle),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              moveToLastScreen();
            },
          ),
        ),
        body: Padding(
          padding: EdgeInsets.only(top: 15.0, left: 10.0, right: 10.0),
          child: ListView(
            children: <Widget>[
              ListTile(
                title: DropdownButton(
                  items: priorities.map((String dropDownStringItem) {
                    return DropdownMenuItem<String>(
                      value: dropDownStringItem,
                      child: Text(dropDownStringItem),
                    );
                  }).toList(),
                  style: textStyle,
                  value: 'Low',
                  onChanged: (valueByUser) {
                    setState(() {
                      print(valueByUser);
                    });
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
                child: TextField(
                  controller: title,
                  style: textStyle,
                  onChanged: (value) {
                    print('The value id $value');
                  },
                  decoration: InputDecoration(
                      labelText: 'Title',
                      labelStyle: textStyle,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
                child: TextField(
                  controller: description,
                  style: textStyle,
                  onChanged: (value) {
                    print('The value id $description');
                  },
                  decoration: InputDecoration(
                      labelText: 'Description',
                      labelStyle: textStyle,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                        child: RaisedButton(
                      color: Theme.of(context).primaryColorDark,
                      textColor: Theme.of(context).primaryColorLight,
                      child: Text(
                        'Save',
                        textScaleFactor: 1.5,
                      ),
                      onPressed: () {
                        setState(() {
                          print('Save clicked');
                        });
                      },
                    )),
                    SizedBox(
                      width: 5.0,
                    ),
                    Expanded(
                        child: RaisedButton(
                      color: Theme.of(context).primaryColorDark,
                      textColor: Theme.of(context).primaryColorLight,
                      child: Text(
                        'Delete',
                        textScaleFactor: 1.5,
                      ),
                      onPressed: () {
                        setState(() {
                          print('Delete clicked');
                        });
                      },
                    )),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
  void moveToLastScreen(){
    Navigator.pop(context);
  }
}
