import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(const MyApp()); //플러터 최상위 함수 runApp 함수

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,//우측 상단 debug 띠 표시 없애기
      title: 'Appbar',
      theme: ThemeData(
        primarySwatch: Colors.green
      ),
        //home: MyHomePagee(title: 'Flutter Demo Home Page')
      home: SnackBar(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First app'),
      ),
      body: Center(
        child: Column(
          children: const [
            Text('Hello'),
            Text('Hello'),
            Text('Hello')
          ],
        ),
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  const MyCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MunYong'),
        centerTitle: true,
        backgroundColor: Colors.cyan,
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,//앱 스크린 내에서 위젯 세로축으로 상단/중간/하단에 정렬
            children: const [
              Text("안녕 나는 MunYong 이다.")
            ],
          ),
      ),
    );
  }
}

class Grade extends StatelessWidget {
  const Grade({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[400],
      appBar: AppBar(
        title: const Text('낙지'),
        backgroundColor: Colors.blueGrey[600],
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 40.0, 0.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,//시작점 정렬
          children: <Widget>[
            const Center(
              child: CircleAvatar(
                  backgroundImage: AssetImage("assets/cat.gif"),
              radius: 60.0,),
            ),
            Divider(
              height: 60.0,// 위아래 합쳐서 60.0
              color: Colors.grey[850],
              thickness: 0.5,
              endIndent: 30.0,//끝에서부터 어느 정도 띄울지
            ),
            const Text('NAME',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            const Text('낙지',
            style: TextStyle(
              color: Colors.white,
              letterSpacing: 2.0,
              fontSize: 28.0,
              fontWeight: FontWeight.bold
            ),),
            const SizedBox(
              height: 30.0,
            ),
            const Text('AGE',
              style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2.0
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            const Text('2',
              style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold
              ),),
            const SizedBox(
              height: 30.0,
            ),
            Row(
              children: const [
                Icon(Icons.check_box_outlined),
                SizedBox(
                  width: 10.0,
                ),
                Text('Talking to Birds',
                style: TextStyle(
                  fontSize: 16.0,
                  letterSpacing: 1.0
                ),)
              ],
            ),
            Row(
              children: const [
                Icon(Icons.check_box_outlined),
                SizedBox(
                  width: 10.0,
                ),
                Text('Playing with a ball',
                  style: TextStyle(
                      fontSize: 16.0,
                      letterSpacing: 1.0
                  ),)
              ],
            ),
            Row(
              children: const [
                Icon(Icons.check_box_outlined),
                SizedBox(
                  width: 10.0,
                ),
                Text('Meow',
                  style: TextStyle(
                      fontSize: 16.0,
                      letterSpacing: 1.0
                  ),)
              ],
            ),
            const SizedBox(
              height: 40.0,
            ),
            const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/cat.webp'),
                radius: 70.0,
                backgroundColor: Colors.blueGrey,//투명 배경의 이미지의 경우 배경과 동일하게 색 적용하면 됨
              ),
            )
          ],
        )
      ),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('문용기록'),
        centerTitle: true,
        elevation: 0.0,
        // leading: IconButton(
        //   icon: const Icon(Icons.menu),
        //   onPressed: () {
        //     print('menu button is clicked');
        //   },
        // ),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {
              print('Shopping cart button is clicked');
            },
          ),
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              print('Search button is clicked');
            },
          ),
        ],
      ),
      drawerScrimColor: Colors.transparent,
      drawer: Container(
        decoration: BoxDecoration(

        ),
        child: Drawer(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(30),
                bottomRight: Radius.circular(30)),
          ),
          //child: Container(
            //color: Colors.red,
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                UserAccountsDrawerHeader(
                  currentAccountPicture: CircleAvatar(//현재 사용자 이미지
                    backgroundImage: const AssetImage('assets/munyong.png'),
                    backgroundColor: Colors.green[400],//투명배경 이미지 사용 시 보임
                  ),
                  margin: const EdgeInsets.fromLTRB(10, 10,10, 5),
                  otherAccountsPictures: const [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/munyong.png'),
                      backgroundColor: Colors.tealAccent,
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/munyong.png'),
                      backgroundColor: Colors.greenAccent,
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/munyong.png'),
                      backgroundColor: Colors.limeAccent,
                    )
                  ],
                  accountName: const Text('MunYong'),
                  accountEmail: const Text('munyong0203.tistory.com'),//원래 이메일 넣어야 함
                  onDetailsPressed: (){ //?
                    //print('arrow is clicked');
                  },
                  decoration: BoxDecoration(
                    color: Colors.green[400],
                    // borderRadius: const BorderRadius.only(
                    //   bottomLeft: Radius.circular(30.0),
                    //   bottomRight: Radius.circular(30.0),
                    // )
                    borderRadius : BorderRadius.circular(20)
                  ),//펼쳐지면서 추가 정보 보여줌
                ),
                ListTile(
                  leading: Icon(Icons.home,
                  color: Colors.grey[850],
                  ),
                  title: const Text('Home'),
                  onTap: (){
                    print("Home is clicked");
                  },
                  trailing: const Icon(Icons.add),
                ),
                ListTile(
                  leading: Icon(Icons.settings,
                    color: Colors.grey[850],
                  ),
                  title: const Text('Setting'),
                  onTap: (){
                    print("Setting is clicked");
                  },
                  trailing: const Icon(Icons.add),
                ),
                ListTile(
                  leading: Icon(Icons.question_answer,
                    color: Colors.grey[850],
                  ),
                  title: const Text('Q&A'),
                  onTap: (){
                    print("Home is clicked");
                  },
                  trailing: const Icon(Icons.add),
                )
              ],
            ),
          ),
      ),
      body: Center(
        child: FlatButton(
          child: const Text('Show me',
        style: TextStyle(
          color: Colors.white
        ),),
            color: Colors.red
        ,onPressed: (){
            //Scaffold.of(conte)
        }),
      )
      //),
      //drawer argument 는 Scaffold 위젯에 포함되어 있는 속성
    );
  }
}

class MyHomePagee extends StatefulWidget {
  MyHomePagee({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePagee> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        //title: Text(widget.title),
      ),
      drawerScrimColor: Colors.transparent,
      drawer: Container(
        width: 300,
        height: double.infinity,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(50),
            bottomRight: Radius.circular(50)
          ),
            color: Color.fromARGB(150, 129, 198, 71),
            boxShadow: [
              BoxShadow(
                color: Color.fromRGBO(31, 0, 250, 0.4),
                //blurRadius: 0,
              )
            ],
            //borderRadius: BorderRadius.circular(10),
            border: Border(
                right: BorderSide(
                  color: Colors.white70,
                ))),
        child: Stack(
          children: [
            SizedBox(
              child: ClipRRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 4.0,
                    sigmaY: 4.0,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                          Colors.grey.withOpacity(0.0),
                          Colors.white.withOpacity(0.2),
                        ])),
                  ),
                ),
              ),
            ),
            Column(
              children: [
                DrawerHeader(
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/munyong.png'),
                        radius: 40.0,
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Text("Mun Yong")
                    ],
                  ),
                ),
                Expanded(
                  child: ListView(
                    children: [
                      ListTile(
                        onTap: () {},
                        leading: Icon(
                          Icons.home,
                          color: Colors.black,
                        ),
                        title: Text("Home Page"),
                      ),
                      ListTile(
                        onTap: () {},
                        leading: Icon(
                          Icons.person,
                          color: Colors.black,
                        ),
                        title: Text("Profile Page"),
                      ),
                      ListTile(
                        onTap: () {},
                        leading: Icon(
                          Icons.settings,
                          color: Colors.black,
                        ),
                        title: Text("Settings"),
                      ),
                      ListTile(
                        onTap: () {},
                        leading: Icon(
                          Icons.logout,
                          color: Colors.black,
                        ),
                        title: Text("Log Out"),
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
              color: Colors.white
            )),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}

class SnackBar extends StatelessWidget {
  const SnackBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Snack Bar'),
        centerTitle: true,
      ),
      body: Center(
          child: FlatButton(
            child: const Text('Show me',
              style: TextStyle(
                color: Colors.white
            ),
            ),
            color: Colors.lightGreen,
            onPressed: () { 
              //Scaffold.of(context).showSnackBar(SnackBar(content: Text('Hello')));
            },
        ),
      ),
    );
  }
}
