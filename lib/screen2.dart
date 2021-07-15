import 'package:flutter/material.dart';
import 'package:notion_infosoft_task/screen3.dart';

class Screen2 extends StatefulWidget {
  @override
  _Screen2State createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff292F3F),
      appBar: AppBar(
        backgroundColor: Color(0xff292F3F),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            radius: 20,
            backgroundColor: Colors.black,
          ),
        ),
        automaticallyImplyLeading: false,
        title: Text('Martina Wolna'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              tileColor: Colors.black,
              title: TextField(
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  hintText: "Search..",
                  hintStyle: TextStyle(fontSize: 10, color: Colors.white),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(5.0),
                    ),
                  ),
                ),
              ),
              trailing: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10)),
                  child: Icon(
                    Icons.search,
                    color: Colors.white,
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'ChatRooms',
              style: TextStyle(color: Colors.white),
            ),
          ),
          Expanded(
            flex: 1,
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 50,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Stack(
                      textDirection: TextDirection.rtl,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Colors.purple,
                                    Colors.blue,
                                    Colors.cyanAccent
                                  ]),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black,
                                  blurRadius: 9,
                                  offset: Offset(9, 9),
                                )
                              ],
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30)),
                          height: 150,
                          width: 100,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Notion Infosoft",
                                style: TextStyle(color: Colors.white),
                                textAlign: TextAlign.end,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.favorite,
                                color: Colors.white,
                                size: 20,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  );
                }),
          ),
          Expanded(
              flex: 2,
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      leading: Stack(
                        children: [
                          CircleAvatar(
                            radius: 25,
                            child: Icon(Icons.person),
                          ),
                          Container(
                            child: CircleAvatar(
                              radius: 15,
                              backgroundColor: Colors.grey,
                              child: Text(
                                "+5",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          )
                        ],
                      ),
                      title: Text(
                        "Profile Name",
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                      subtitle: Text(
                        "Last Message Sent",
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                      trailing: Text('Time/Day',
                          style: TextStyle(color: Colors.white, fontSize: 14)),
                    );
                  })),
          FlatButton(
            color: Colors.cyan,
            onPressed: () {
              setState(() {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Screen3()));
              });
            },
            child: Text('NextScreen'),
          )
        ],
      ),
    );
  }
}
