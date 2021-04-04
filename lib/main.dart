import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme:
            ThemeData(brightness: Brightness.dark, primaryColor: Colors.black),
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Hello'),
          ),
          body: DummyListView(),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.blue,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Icon(Icons.home), title: const Text('Home')),
              BottomNavigationBarItem(
                  icon: Icon(Icons.local_movies),
                  title: const Text('Top Rated')),
              BottomNavigationBarItem(
                  icon: Icon(Icons.timer), title: const Text('Upcoming')),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite), title: const Text('Favorites')),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), title: const Text('Settings')),
            ],
          ),
        ));
  }
}

class DummyListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var lists = [];

    for (var i = 0; i < 50; i++) {
      lists.add('Hello ' + (i + 1).toString());
    }

    return ListView.builder(
      padding: const EdgeInsets.all(1),
      itemCount: lists.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          height: 80,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[Text('${lists[index]}')],
          ),
          decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.grey))),
        );
      },
    );
  }
}
