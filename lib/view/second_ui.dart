import 'package:flutter/material.dart';

class SecondUI extends StatefulWidget {
  const SecondUI({Key? key}) : super(key: key);

  @override
  _SecondUIState createState() => _SecondUIState();
}

class _SecondUIState extends State<SecondUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.yellow,
      appBar: AppBar(
        backgroundColor: Colors.green[300],
        title: Text(
          'JOOBB ^^',
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.exit_to_app,
              color: Colors.green[900],
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              otherAccountsPictures: [
                Image.asset(
                  'assets/images/saulogo.png',
                ),
              ],
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage(
                  'assets/images/myprofile.png',
                ) ,
              ),
              accountName: Text(
                'Kitsana Udomkeaw',
              ),
              accountEmail: Text(
                'ID:6252410008',
              ),
              decoration: BoxDecoration(
                image:  DecorationImage(
                  image: AssetImage(
                    'assets/images/bgdrawer.jpg',
                  ),
                )
              ),
            ),
            ListTile(
              title: Text(
                'หน้าแรก',
              ),
              onTap: (){},
              
               
            ),
            ListTile(
              leading: Icon(
                Icons.table_chart,
                color: Colors.green[700],
              ),
              title: Text(
                'ตารางสอน',
              ),
              onTap: (){},
            ),   
            ListTile(
              trailing: Text(
                '999',
              ),
              leading: Icon(
                Icons.access_alarm,
              ),
              title: Text(
                'ตางรางสอบ',
              ),
              onTap: (){},
            ),
            Divider(
          
              color: Colors.red,
            ),
            ListTile(
              trailing:  Icon(
                Icons.exit_to_app,
                color: Colors.blue,
              ),
              title:  Text(
                'ออกจากการใช้งาน',
              ),
              onTap: (){},
            ),
          ],
        ),
      ),
    );
  }
}
