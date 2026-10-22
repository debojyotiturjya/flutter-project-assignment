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
        backgroundColor: const Color.fromARGB(255, 124, 18, 64),
        //leading: Icon(Icons.home),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.person_4_outlined)),
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.menu_outlined)),
        ],
      ),

      drawer: Drawer(
        //drawer options
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("accountName"),
              accountEmail: Text("accountEmail"),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 140, 31, 31),
              ),
            ),

            Divider(),

            ListTile(
              title: Text("Homepage"),
              trailing: Icon(Icons.home),
              hoverColor: const Color.fromARGB(255, 136, 44, 44),
              onTap: () {},
            ),

            Divider(),
            Spacer(),
            ListTile(
              title: Text("About Us"),
              trailing: Icon(Icons.question_mark),
              hoverColor: const Color.fromARGB(255, 136, 44, 44),
              onTap: () {},
            ),
          ],
        ),
      ),

      body: SingleChildScrollView(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.deepPurple,
                        foregroundColor: const Color.fromARGB(
                          255,
                          255,
                          255,
                          255,
                        ),
                        fixedSize: Size(300, 105),
                        side: BorderSide(),
                        elevation: 50,
                      ),
                      child: Text("Text button"),
                    ),
                  ),

                  SizedBox(width: 25),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.deepPurple,
                        foregroundColor: const Color.fromARGB(
                          255,
                          255,
                          255,
                          255,
                        ),
                        fixedSize: Size(300, 65),
                        side: BorderSide(),
                        //elevation: 50,
                      ),
                      child: Text("Elevated Button"),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IconButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.deepPurple,
                        foregroundColor: const Color.fromARGB(
                          255,
                          255,
                          255,
                          255,
                        ),
                        fixedSize: Size(100, 25),
                        side: BorderSide(),
                        elevation: 50,
                      ),
                      icon: Icon(Icons.animation),
                    ),
                  ),
                ],
              ),
              Container(
                height: 200,
                width: 200,
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.all(30),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 208, 133, 221),
                  border: Border.all(width: 5, color: Colors.blue),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  //shape: BoxShape.circle,
                  gradient: RadialGradient(
                    colors: [Colors.purpleAccent, Colors.purple],
                  ),
                ),
                child: Text(
                  "Hello Containter",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(
                height: 200,
                width: 200,
                child: Card(
                  color: Colors.amber,
                  shadowColor: Colors.blue,
                  elevation: 20,
                  shape: const CircleBorder(),
                  child: const Center(child: Text("Hello Card")),
                ),
              ),
              Image.asset(
                'assets/image/download.JPG',
                errorBuilder: (context, error, stackTrace) =>
                    Text('Error: $error'),
              ),
              //Image.network('assets/images/download.jpg'),
            ],
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: "Add",
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.cyanAccent,
        hoverColor: Colors.deepPurpleAccent,
        shape: RoundedRectangleBorder(),
        child: Icon(Icons.add),
      ),
    );
  }
}
