import 'package:app_bar/Pages/calls.dart';
import 'package:app_bar/Pages/homapagebar.dart';
import 'package:app_bar/Pages/status.dart';
import 'package:flutter/material.dart';

class BackAppbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            title: Text('Background'),
            titleSpacing: 0,
            elevation: 0,
            leading: IconButton(
              icon: Icon(
                Icons.menu,
              ),
              onPressed: () => print('Menu'),
            ),
            actions: [
              IconButton(
                icon: Icon(Icons.notifications),
                onPressed: () => print('Notification'),
              ),
              IconButton(
                onPressed: () {
                  print('Search');
                },
                icon: Icon(Icons.search),
              )
            ],
            flexibleSpace: Container(
              decoration: BoxDecoration(
                  /*gradient: LinearGradient(
                colors: [Colors.purple, Colors.blue, Colors.teal],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),*/

                  image: DecorationImage(
                      image: NetworkImage(
                          'https://newevolutiondesigns.com/images/freebies/black-facebook-cover-preview-19.jpg'),
                      fit: BoxFit.cover)),
            ),
            bottom: TabBar(
              indicatorColor: Colors.white,
              indicatorWeight: 5,
              onTap: (index) {
                print(index);
              },
              tabs: [
                Tab(
                  icon: Icon(Icons.home),
                  text: 'Home',
                ),
                Tab(
                  icon: Icon(Icons.add_a_photo),
                  text: 'Status',
                ),
                Tab(
                  icon: Icon(Icons.call),
                  text: 'Calls',
                )
              ],
            ),
          ),
          body: TabBarView(
            children: [Homebar(), Status(), Calls()],
          )),
    );
  }
}
