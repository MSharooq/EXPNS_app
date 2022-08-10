import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Align(
            alignment: Alignment(-1, 0),
            child: const Text(
              'EXPNS',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Column(
          children: [
            Container(
              child: Text(
                DateFormat("dd LLL yyyy").format(DateTime.now()),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(8, 8, 4, 8),
                    child: Container(
                      height: 200,
                      width: 100,
                      child: Align(
                        alignment: Alignment(-0.8, -0.8),
                        child: Text(
                          "Debit",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 30),
                        ),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.grey),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(4, 8, 8, 8),
                    child: Container(
                      height: 200,
                      width: 100,
                      child: Align(
                        alignment: Alignment(-0.8, -0.8),
                        child: Text(
                          "Credit",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 30),
                        ),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.grey),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8.0, 0, 0, 0),
                    child: Text(
                      "History",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: customListTile(
                      heading: "test",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: customListTile(
                      heading: "test2",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: customListTile(heading: "test 3"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: customListTile(heading: "test5"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: customListTile(
                      heading: "test6",
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      print("presssed");
                    },
                    child: Text("button"),
                    onLongPress: () {
                      print("fuck you");
                    },
                  )
                ],
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.qr_code),
          onPressed: () {
            print("hello1");
          },
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "data",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.abc_sharp),
              label: "datd",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.nature),
              label: "data",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.face),
              label: "data",
            ),
          ],
          backgroundColor: Colors.blue,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class customListTile extends StatelessWidget {
  final String heading;
  const customListTile({
    Key? key,
    required this.heading,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.five_g),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      title: Text(
        "$heading",
        style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            shadows: [Shadow(offset: Offset(1, 1), blurRadius: 3)]),
      ),
      subtitle: Text(DateFormat("LLL").format(DateTime.now())),
      tileColor: Colors.grey,
      onTap: () {
        print("hello");
      },
    );
  }
}
