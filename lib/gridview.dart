import 'package:flutter/material.dart';

class girdviewpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var myItems = [
      {
        "img": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRFscNKQCX2AukNpq6pV_y65Uq9MDT285JPIUCFL5OsnQ&s=10",
        "title": "Greatest player alive",
      },
      {
        "img": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQalr86ZEjr43pyIPC_WvxCCUHQKkFU8MDqyy0U-W83mw&s=10",
        "title": "Second greates player alive",
      },
      {
        "img": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTgPZm3XGQlefqT1mka19WLisNwdoV9K8kfWnxAycpB2g&s=10",
        "title": "Idol of the greatest player alive",
      },
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text("Gridview"),
        backgroundColor: Colors.blueGrey,
      ),

      body:GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
        itemCount: myItems.length,
        itemBuilder: (context, index){
          return Card(
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.network(myItems[index]['img']!,height: 100, width: 100),
                SizedBox(width: 20),
                Text(myItems[index]['title']!),
            ],
            ),
          );
        }

      )   
    );
  }
}
