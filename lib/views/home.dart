import 'package:flutter/material.dart';
import '../components/listview.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('暮云春树'),
            elevation: 0.0,
            bottom: TabBar(
              unselectedLabelColor: Colors.black38,
              indicatorColor: Colors.black87,
              tabs: <Widget>[
                Tab(icon: Icon(Icons.local_florist)),
                Tab(icon: Icon(Icons.change_history)),
                Tab(icon: Icon(Icons.directions_bike))
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              Icon(Icons.local_florist, size: 150.0, color: Colors.grey),
              Icon(Icons.change_history, size: 150.0, color: Colors.grey),
              CustomListView()
            ],
          ),
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                UserAccountsDrawerHeader(
                  accountName: Text(
                    '暮云春树',
                    style: TextStyle(
                        color: Colors.black87, fontWeight: FontWeight.bold),
                  ),
                  accountEmail: Text(
                    '913856642@qq.com',
                    style: TextStyle(
                        color: Colors.grey[600], fontWeight: FontWeight.bold),
                  ),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://avatars1.githubusercontent.com/u/33805157?s=460&v=4'),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.message),
                  title: Text(
                    'Messeges',
                    textAlign: TextAlign.left,
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.favorite),
                  title: Text(
                    'Favorite',
                    textAlign: TextAlign.left,
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text(
                    'Settings',
                    textAlign: TextAlign.left,
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
