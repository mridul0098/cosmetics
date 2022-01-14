import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/models/cosmetics_list.dart';
import 'package:shop_app/widgets/home/sliver_adaptor.dart';
import 'package:shop_app/widgets/home/sliver_data.dart';
import 'package:shop_app/widgets/cosmetics_card.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: ProductProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          drawer: Drawer(  
        child: ListView(  
          // Important: Remove any padding from the ListView.  
          padding: EdgeInsets.zero,  
          children: <Widget>[  
            UserAccountsDrawerHeader(  
              accountName: Text("Mizanur Rahman Mridul"),  
              accountEmail: Text("mridulrahman98@gmail.com"),  
              currentAccountPicture: CircleAvatar(  
                backgroundColor: Colors.orange,  
                child: Text(  
                  "A",  
                  style: TextStyle(fontSize: 40.0),  
                ),  
              ),  
            ),  
            ListTile(  
              leading: Icon(Icons.home), title: Text("Home"),  
              onTap: () {  
                Navigator.pop(context);  
              },  
            ),  
            ListTile(  
              leading: Icon(Icons.settings), title: Text("Settings"),  
              onTap: () {  
                Navigator.pop(context);  
              },  
            ),  
            ListTile(  
              leading: Icon(Icons.contacts), title: Text("Contact Us"),  
              onTap: () {  
                Navigator.pop(context);  
              },  
            ),  
          ],  
        ),  
      ),  
          body: CustomScrollView(
            slivers: [
              SliverAppBar(
                actions: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.work_outline),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.person),
                  ),
                ],
                backgroundColor: Color(0xFF042925),
                title: Text('cosmetics'),
                centerTitle: true,
                pinned: true,
                expandedHeight: 120,
                flexibleSpace: FlexibleSpaceBar(
                  background: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(
                        top: 80.0, bottom: 20.0, left: 10.0, right: 10.0),
                    child: TextField(
                      style: TextStyle(color: Colors.white, letterSpacing: 2.0),
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.white,
                            size: 30,
                          ),
                          contentPadding: EdgeInsets.only(left: 10.0),
                          filled: true,
                          focusColor: Colors.white,
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.white, width: 2),
                              borderRadius: BorderRadius.circular(26.0)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xFFf9f7f7), width: 1.0),
                              borderRadius: BorderRadius.circular(26.0))),
                    ),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 10.0),
                        child: Row(
                          children: [
                            Text(
                              'Home ',
                              style: TextStyle(
                                  fontSize: 15,
                                  letterSpacing: 1,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 10,
                              child: Text('/',
                                  style: TextStyle(
                                      fontSize: 15,
                                      letterSpacing: 1,
                                      fontWeight: FontWeight.bold)),
                            ),
                            Text(' Cosmetics ',
                                style: TextStyle(
                                    fontSize: 15,
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.bold)),
                           /* SizedBox(
                              width: 10,
                              child: Text('/',
                                  style: TextStyle(
                                      fontSize: 15,
                                      letterSpacing: 1,
                                      fontWeight: FontWeight.bold)),
                            ),
                            Text(' Ac',
                                style: TextStyle(
                                    fontSize: 15,
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.bold)),
                                    */
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              HomeSliverAdapter(),
              SliverProduct()
            ],
          ),
          endDrawer: Drawer(
            child: ListView(
              children: [],
            ),
          ),
          //body: ProductCard(),
        ),
        // routes: {
        //   '/': (context) => ProductCard(),
        // },
      ),
    );
  }
}
