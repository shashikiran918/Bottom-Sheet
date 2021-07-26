import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Remove the debug banner
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  void _show(BuildContext ctx) {
    showModalBottomSheet(
        isScrollControlled: true,
        elevation: 5,
        context: ctx,
        builder: (ctx) => Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(labelText: 'Name'),
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: 'Age'),
              ),
              SizedBox(
                height: 15,
              ),
              ElevatedButton(onPressed: () {}, child: Text('Submit'))
            ],
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SHASHI'),
      ),
      body: Container(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => _show(context),
      ),
    );
  }
}