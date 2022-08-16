import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'ScreenA.dart';
import 'ScreenB.dart';
import 'ScreenC.dart';

void main() => runApp(const MyApp()); //플러터 최상위 함수 runApp 함수

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //우측 상단 debug 띠 표시 없애기
      title: 'Myapp',
      theme: ThemeData(primarySwatch: Colors.green),
      //home: MyHomePagee(title: 'Flutter Demo Home Page')
      home: MyButtons(),
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
          children: const [Text('Hello'), Text('Hello'), Text('Hello')],
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
          mainAxisAlignment: MainAxisAlignment.center,
          //앱 스크린 내에서 위젯 세로축으로 상단/중간/하단에 정렬
          children: const [Text("안녕 나는 MunYong 이다.")],
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
            crossAxisAlignment: CrossAxisAlignment.start, //시작점 정렬
            children: <Widget>[
              const Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/cat.gif"),
                  radius: 60.0,
                ),
              ),
              Divider(
                height: 60.0, // 위아래 합쳐서 60.0
                color: Colors.grey[850],
                thickness: 0.5,
                endIndent: 30.0, //끝에서부터 어느 정도 띄울지
              ),
              const Text(
                'NAME',
                style: TextStyle(color: Colors.white, letterSpacing: 2.0),
              ),
              const SizedBox(
                height: 10.0,
              ),
              const Text(
                '낙지',
                style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 2.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 30.0,
              ),
              const Text(
                'AGE',
                style: TextStyle(color: Colors.white, letterSpacing: 2.0),
              ),
              const SizedBox(
                height: 10.0,
              ),
              const Text(
                '2',
                style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 2.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 30.0,
              ),
              Row(
                children: const [
                  Icon(Icons.check_box_outlined),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    'Talking to Birds',
                    style: TextStyle(fontSize: 16.0, letterSpacing: 1.0),
                  )
                ],
              ),
              Row(
                children: const [
                  Icon(Icons.check_box_outlined),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    'Playing with a ball',
                    style: TextStyle(fontSize: 16.0, letterSpacing: 1.0),
                  )
                ],
              ),
              Row(
                children: const [
                  Icon(Icons.check_box_outlined),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    'Meow',
                    style: TextStyle(fontSize: 16.0, letterSpacing: 1.0),
                  )
                ],
              ),
              const SizedBox(
                height: 40.0,
              ),
              const Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/cat.webp'),
                  radius: 70.0,
                  backgroundColor:
                      Colors.blueGrey, //투명 배경의 이미지의 경우 배경과 동일하게 색 적용하면 됨
                ),
              )
            ],
          )),
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
          decoration: BoxDecoration(),
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
                  currentAccountPicture: CircleAvatar(
                    //현재 사용자 이미지
                    backgroundImage: const AssetImage('assets/munyong.png'),
                    backgroundColor: Colors.green[400], //투명배경 이미지 사용 시 보임
                  ),
                  margin: const EdgeInsets.fromLTRB(10, 10, 10, 5),
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
                  accountEmail: const Text('munyong0203.tistory.com'),
                  //원래 이메일 넣어야 함
                  onDetailsPressed: () {
                    //?
                    //print('arrow is clicked');
                  },
                  decoration: BoxDecoration(
                      color: Colors.green[400],
                      // borderRadius: const BorderRadius.only(
                      //   bottomLeft: Radius.circular(30.0),
                      //   bottomRight: Radius.circular(30.0),
                      // )
                      borderRadius:
                          BorderRadius.circular(20)), //펼쳐지면서 추가 정보 보여줌
                ),
                ListTile(
                  leading: Icon(
                    Icons.home,
                    color: Colors.grey[850],
                  ),
                  title: const Text('Home'),
                  onTap: () {
                    print("Home is clicked");
                  },
                  trailing: const Icon(Icons.add),
                ),
                ListTile(
                  leading: Icon(
                    Icons.settings,
                    color: Colors.grey[850],
                  ),
                  title: const Text('Setting'),
                  onTap: () {
                    print("Setting is clicked");
                  },
                  trailing: const Icon(Icons.add),
                ),
                ListTile(
                  leading: Icon(
                    Icons.question_answer,
                    color: Colors.grey[850],
                  ),
                  title: const Text('Q&A'),
                  onTap: () {
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
              child: const Text(
                'Show me',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.red,
              onPressed: () {
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
                bottomRight: Radius.circular(50)),
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
      body: Container(decoration: BoxDecoration(color: Colors.white)),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}

class DoSnackBar extends StatelessWidget {
  const DoSnackBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Snack Bar'),
        centerTitle: true,
      ),
      body: MySnackBar(),
    );
  }
}
class MySnackBar extends StatelessWidget {
  const MySnackBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        child: Text(
          'Show me',
        ),
        color: Colors.lightGreen,
        onPressed: () {
          Scaffold.of(context).showSnackBar(
            const SnackBar(
              content: Text(
                'Hello',
                textAlign: TextAlign.center,
                style: TextStyle(
                    //스낵바 꾸미기
                    color: Colors.white),
              ),
              backgroundColor: Colors.green,
              duration: Duration(milliseconds: 1000), //1초
            ),
          );
        },
      ),
    );
  }
}

class DoToast extends StatelessWidget {
  const DoToast({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Toast message'),
          centerTitle: true,
        ),
        body: Center(
          child: FlatButton(
            onPressed: () {
              myToast();
            },
            color: Colors.green,
            child: const Text('Toast'),
          ),
        ));
  }
}
void myToast() {
  Fluttertoast.showToast(
      msg: 'Flutter',
      gravity: ToastGravity.BOTTOM,
      //toast 메세지 위치
      backgroundColor: Colors.lightGreen,
      fontSize: 20.0,
      textColor: Colors.white,
      toastLength: Toast.LENGTH_SHORT);
}

class DoContainer extends StatelessWidget {
  const DoContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: SafeArea(
        child: Container(
          color: Colors.lightGreenAccent,
          width: 100, //Container 위젯의 크기 지정
          height: 100,
          //margin: EdgeInsets.all(20), // margin 으로 띄우기 (가장자리로부터 띄우기)
          margin: const EdgeInsets.symmetric(
            vertical: 80,
            horizontal: 20
          ),
          padding: EdgeInsets.all(20),// Container 안의 Text 위치 조정
          child: Text('Hello'),
        ),
      ),
    );
  }
}

class DoColumnRow extends StatelessWidget {
  const DoColumnRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              //width: 100,
              height: 100,
              color: Colors.white,
              child: Text('Container 1'),
            ),
            Container(
              //width: 100,
              height: 100,
              color: Colors.green,
              child: Text('Container 2'),
            ),
            Container(
              //width: 100,
              height: 100,
              color: Colors.greenAccent,
              child: Text('Container 3'),
            ),
            // Container(
            //   width: double.infinity,// 최대한 가로축 끝까지 확장
            // )
          ],
        ),
      ),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Page'),
      ),
      body: Center(
        child: RaisedButton(
        child: Text('Go to the Second page'),
          onPressed: () {
          Navigator.push(context, MaterialPageRoute(
          builder: (_)=>SecondPage()));
          }) //First Page의 context
     ),
      );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Center(
        child: RaisedButton(
            child: Text('Go to the First page'),
            onPressed: () {
              Navigator.pop(ctx);
            }),
      ),
    );
  }
}

class Screens extends StatelessWidget {
  const Screens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
      initialRoute: '/',
      routes: {
        '/' : (context) => ScreenA(),
        '/b' : (context) => ScreenB(),
        '/c' : (context) => ScreenC()
      },
    );
  }
}

class AboutScaffoldMessenger extends StatelessWidget {
  const AboutScaffoldMessenger({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scaffold Messenger'),
      ),
      body: HomeBody(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.thumb_up),
        onPressed: () {
          ScaffoldMessenger.of(context)
              .showSnackBar(
              SnackBar(
                  content: Text('Like a new Snack bar!'),
                duration: Duration(seconds: 5),
                action: SnackBarAction(
                  label: 'Undo',
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ThirdPageBody()));
                  },
                ),
              )
          );
        },
      ),
    );
  }
}

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: Text('Go to the second page body'),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondPageBody()));
        },
      ),
    );
  }
}

class SecondPageBody extends StatelessWidget {
  const SecondPageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Center(
        child: Text('"좋아요가 추가 되었습니다"',
        style: TextStyle(
          fontSize: 20.0,
          color: Colors.redAccent
        ),),
      ),
    );
  }
}

class ThirdPageBody extends StatelessWidget {
  const ThirdPageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScaffoldMessenger(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Third Page'),
        ),
        body: Builder( //다른 페이지로 넘어가면 바로 사라지게
          builder: (context) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('"좋아요"를 취소 하시겠습니까?',
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.redAccent
                    ),),
                  ElevatedButton(onPressed: (){
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content:
                        Text('"좋아요"가 취소되었습니다'),
                        duration: Duration(seconds: 3),));
                  }, child: Text('취소하기'))
                ],
              ),
            );
          }
        ),
      ),
    );
  }
}

class MyButtons extends StatelessWidget {
  const MyButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buttons'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              // onPressed: () {
              //   print('text button');
              // },
              onLongPress: () {
                print('text button');
              },
              child: const Text(
                'Text button',
                style: TextStyle(fontSize: 20.0),
              ),
              style: TextButton.styleFrom(
                primary: Colors.redAccent,
                //backgroundColor: Colors.blueGrey //버튼의 배경색
              ),
              onPressed: () {},
            ),
            ElevatedButton(
              onPressed: () {
                print('Elevated button');
              },
              child: Text('Elevated button'),
              style: ElevatedButton.styleFrom(
                  primary: Colors.orangeAccent, //버튼의 배경색
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  elevation: 0.0),
            ),
            OutlinedButton(
              onPressed: () {
                print('Outlined button');
              },
              child: Text('Outlined button'),
              style: OutlinedButton.styleFrom(
                primary: Colors.green,
                // side: BorderSide(
                //   color: Colors.black87,//외곽선 색
                //   width: 2.0//외곽선 두께
                // )
              ),
            ),
            TextButton.icon(
              onPressed: () {
                print('icon button');
              },
              icon: Icon(
                Icons.home,
                size: 30.0,
                color: Colors.blueGrey, //이이콘 색상 지정 안하면 primary색
              ),
              label: Text('Go to home'),
              style: TextButton.styleFrom(primary: Colors.purple),
            ),
            ElevatedButton.icon(
              onPressed: () {
                print('Go to Home');
              },
              icon: Icon(
                Icons.home,
                size: 20,
              ),
              label: Text('Go to Home'),
              style: ElevatedButton.styleFrom(
                  primary: Colors.black, maximumSize: Size(200, 50)),
            ),
            OutlinedButton.icon(
              onPressed: () {
                print('Outlined icon button');
              },
              icon: Icon(Icons.home),
              label: Text('Go to home'),
              style: OutlinedButton.styleFrom(primary: Colors.black),
            ),
            ElevatedButton.icon(
              onPressed: null, //비활성화된 버튼
              icon: Icon(
                Icons.home,
                size: 20,
              ),
              label: Text('Go to Home'),
              style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  maximumSize: Size(200, 50),
                  onSurface: Colors.pink), //비활성화된 버튼 색상
            ),
            ButtonBar(
              //우측으로 끝정렬이 됨
              alignment: MainAxisAlignment.center, //중앙으로 옮기기
              buttonPadding: EdgeInsets.all(20),
              children: [
                TextButton(onPressed: () {}, child: Text("TextButton")),
                ElevatedButton(onPressed: () {}, child: Text("ElevatedButton"))
              ],
            )
          ],
        ),
      ),
    );
  }
}
