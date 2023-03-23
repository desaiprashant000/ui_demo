import 'package:curved_drawer_fork/curved_drawer_fork.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:ui_demo/animation-1.dart';
import 'package:ui_demo/animations.dart';
import 'package:ui_demo/tabbar.dart';

import 'intro_slider.dart';

void main() {
  runApp(MaterialApp(
    home: myapp(),
    debugShowCheckedModeBanner: false,
  ));
}

class myapp extends StatefulWidget {
  const myapp({Key? key}) : super(key: key);

  @override
  State<myapp> createState() => _myappState();
}

class _myappState extends State<myapp> with TickerProviderStateMixin {
  final List<String> imageList = [
    "https://images.pexels.com/photos/1130434/pexels-photo-1130434.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/3329812/pexels-photo-3329812.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/158340/fuchs-wild-animal-predator-animal-world-158340.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/2759315/pexels-photo-2759315.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/2529296/pexels-photo-2529296.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/4741004/pexels-photo-4741004.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load"
  ];

  List list = [
    'https://images.pexels.com/photos/1188998/pexels-photo-1188998.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/3218340/pexels-photo-3218340.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
    'https://images.pexels.com/photos/3284268/pexels-photo-3284268.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    'https://images.pexels.com/photos/8150997/pexels-photo-8150997.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load',
    'https://images.pexels.com/photos/7038254/pexels-photo-7038254.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
    'https://images.pexels.com/photos/3551497/pexels-photo-3551497.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load',
    'https://images.pexels.com/photos/7212722/pexels-photo-7212722.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load',
    'https://images.pexels.com/photos/2317904/pexels-photo-2317904.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'
  ];

  List image = [
    'https://images.pexels.com/photos/6272179/pexels-photo-6272179.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
    'https://images.pexels.com/photos/2904176/pexels-photo-2904176.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
    'https://images.pexels.com/photos/1159577/pexels-photo-1159577.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
    'https://images.pexels.com/photos/2575692/pexels-photo-2575692.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
    'https://images.pexels.com/photos/677974/pexels-photo-677974.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
    'https://images.pexels.com/photos/682361/pexels-photo-682361.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
    'https://images.pexels.com/photos/1598377/pexels-photo-1598377.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
    'https://images.pexels.com/photos/689784/pexels-photo-689784.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'
  ];

  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      // bottomNavigationBar: BottomNavigationBar(
      //   fixedColor: Colors.blue,
      //   items: [
      //     BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.blue,),label: 'Home'),
      //     BottomNavigationBarItem(icon: Icon(Icons.search,color: Colors.blue,),label: 'Search'),
      //     BottomNavigationBarItem(icon: Icon(Icons.favorite,color: Colors.blue,),label: 'Favorite'),
      //     BottomNavigationBarItem(icon: Icon(Icons.account_circle,color: Colors.blue,),label: 'Account')
      //   ],
      // ),
      drawer: CurvedDrawer(
        color: Colors.white,
        labelColor: Colors.black54,
        width: 75.0,
        items: [
          DrawerItem(icon: Icon(Icons.description), label: "deshboard"),
          DrawerItem(icon: Icon(Icons.messenger), label: "Messages"),
          DrawerItem(icon: Icon(Icons.settings), label: "settings"),
          DrawerItem(icon: Icon(Icons.ac_unit_rounded), label: "about us"),
          DrawerItem(icon: Icon(Icons.logout), label: "Log out"),
        ],
        onTap: (index) {
          //Handle button tap
        },
      ),
      // drawer: Drawer(
      //   child: Column(
      //     children: [
      //       UserAccountsDrawerHeader(accountName: Text("dp dyanemo"),
      //           accountEmail: Text("dyanemo@gmail.com"),
      //           currentAccountPicture: Icon(Icons.account_circle),
      //           decoration: BoxDecoration(color: Colors.deepOrange)),
      //       ListTile(
      //         onTap: () {
      //           print('Home');
      //           Navigator.pop(context);
      //         },
      //         title: Text('Home'),
      //       ),
      //       ListTile(title: Text('deshboard'),),
      //       ListTile(title: Text('settings'),),
      //       ListTile(title: Text('about us'),),
      //       ListTile(title: Text('Log out'),),
      //     ],
      //   ),
      // ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 250,
              child: GFCarousel(
                autoPlay: true,
                hasPagination: true,
                items: imageList.map(
                  (url) {
                    return Container(
                      margin: EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        child: Image.network(url,
                            fit: BoxFit.cover, width: 1000.0),
                      ),
                    );
                  },
                ).toList(),
                onPageChanged: (index) {
                  setState(() {
                    index;
                  });
                },
              ),
            ),
            Container(
              height: 30,
              child: Column(
                children: [
                  Container(
                    child: Text(
                      'Animals',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 150,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 8,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child: GFAvatar(
                            size: 80,
                            backgroundImage: NetworkImage(list[index]),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            Container(
              height: 30,
              child: Column(
                children: [
                  Container(
                    child: Text('Animals Library',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                  )
                ],
              ),
            ),
            Container(
              height: 300,
              child: GridView.builder(
                itemCount: 8,
                itemBuilder: (context, index) {
                  return GFImageOverlay(
                    boxFit: BoxFit.fill,
                    margin: EdgeInsets.only(right: 10, bottom: 10),
                    height: 300,
                    width: 400,
                    image: NetworkImage(image[index]),
                  );
                },
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, childAspectRatio: 1),
              ),
            ),
            Container(
              height: 80,
              child: GFTabBar(
                length: 4,
                controller: tabController,
                tabs: [
                  Tab(
                    icon: Icon(Icons.home),
                    child: Text(
                      "Home",
                    ),
                  ),
                  Tab(
                    icon: Icon(Icons.search),
                    child: Text(
                      "Search",
                    ),
                  ),
                  Tab(
                    icon: Icon(Icons.favorite),
                    child: Text(
                      "Favorites",
                    ),
                  ),
                  Tab(
                    icon: Icon(Icons.account_circle),
                    child: Text(
                      "Account",
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
