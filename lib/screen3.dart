import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Screen3 extends StatefulWidget {
  @override
  _Screen3State createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff292F3F),
      appBar: AppBar(
        backgroundColor: Color(0xff292F3F),
        title: Text('ChatRoom'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 50,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50,
                      color: Colors.blue,
                      child: Center(
                        child: Text(
                          'New User',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50,
                      color: Colors.orange,
                      child: Center(
                          child: Text(
                        'Delete Chatroom',
                        style: TextStyle(color: Colors.white),
                      )),
                    ),
                  ),
                )
              ],
            ),
          ),
          Text(
            'Team',
            style: TextStyle(color: Colors.white),
          ),
          Expanded(
              flex: 2,
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        ListTile(
                          leading: CircleAvatar(
                            radius: 25,
                            child: Icon(Icons.person),
                          ),
                          // title: Text(
                          //   "",
                          //   style: TextStyle(color: Colors.white, fontSize: 14),
                          // ),

                          trailing: Text('Profile Name',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 14)),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.purple,
                                  ),
                                  height: 50,
                                  child: Center(
                                    child: Text(
                                      'fullAccess',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.grey,
                                  ),
                                  height: 50,
                                  child: Center(
                                    child: Text(
                                      'Register Access',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                  color: Colors.grey.shade700,
                                  child: Icon(
                                    Icons.book,
                                    color: Colors.orange,
                                  )),
                            ),
                          ],
                        )
                      ],
                    );
                  })),
        ],
      ),
    );
  }
}
