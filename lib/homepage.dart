import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Homepage"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 197, 201, 197),
        //leading: Icon(Icons.home),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.person_4_outlined)),
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.menu_outlined)),
        ],
      ),

      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("accountName"),
              accountEmail: Text("accountEmail"),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 140, 31, 31),
              ),
            ),

            Divider(), //gives a line between two bs

            ListTile(
              title: Text("Homepage"),
              //leading: Icon(Icons.home), icon bame jay
              trailing: Icon(Icons.home), //icon dane jay
              hoverColor:
                  Colors.red[300], //cursor drawer er upre nile j colour dekhabe
              onTap: () {},
            ),
          ],
        ),
      ),

      body: Text(
        "Hello",
        style: TextStyle(
          fontSize: 50,

          color: const Color.fromARGB(255, 7, 150, 163),
        ),
      ),
    );
  }
}
