import 'package:flutter/material.dart';
import 'package:flutter_app_sau1/view/third_page1_ui.dart';
import 'package:flutter_app_sau1/view/third_page2_ui.dart';
import 'package:flutter_app_sau1/view/third_page3_ui.dart';
import 'package:flutter_app_sau1/view/third_page4_ui.dart';

class ThirdUI extends StatefulWidget {
  const ThirdUI({ Key? key }) : super(key: key);

  @override
  _ThirdUIState createState() => _ThirdUIState();
}

class _ThirdUIState extends State<ThirdUI> {
  List page = [
    ThirdPage1UI(),
    ThirdPage2UI(),
    ThirdPage3UI(),
    ThirdPage4UI(),
  ];
  int selectIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[200],
        title: Text(
          'Thir UI ^^',
        ),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap:  (value){
          setState(() {
            selectIndex = value;
          });
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.grey[100],
        selectedItemColor: Colors.red,
        currentIndex: selectIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.assignment,),
            label:  'page1',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.assignment_ind_rounded),
            label:  'page2',
          ),BottomNavigationBarItem(
            icon: Icon(
              Icons.cabin_outlined),
            label:  'page3',
          ),BottomNavigationBarItem(
            icon: Icon(
              Icons.expand_less),
            label:  'page4',
          ),
        ],
        
      
      
      ),
      body: page.elementAt(selectIndex),
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
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(
          Icons.add,
          color: Colors.yellow,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    
    );
  }
}