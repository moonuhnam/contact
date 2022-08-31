import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
              actions: [IconButton(onPressed: (){}, icon: Icon(Icons.menu))],
              leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back)),
              title: Text('카구족')
          ),
          body: SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('오산 이디야 카페',style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900),),
                  Container(
                    margin: EdgeInsets.fromLTRB(0,30,0,10),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                    ),
                    child: Column(
                      children: [
                        Text('오늘의 쿠폰', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w900)),
                        Image.asset('ice01.jpg'),
                        Text('Ice Americano Tall Size',style: TextStyle(fontWeight: FontWeight.w900,)),
                        ElevatedButton(onPressed: (){}, child: Text('직원확인')),
                      ],
                    ),
                  ),
                  Text('영업시간 : 09:00~18:00'),
                  Text('위치 : 경기도 오산시 여계산로 60'),
                  Text('다른카페 더 찾아보기')
                ],
              )
          ),
          bottomNavigationBar: BottomAppBar(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.map)),
                IconButton(onPressed: (){}, icon: Icon(Icons.home)),
                IconButton(onPressed: (){}, icon: Icon(Icons.qr_code_scanner)),
                IconButton(onPressed: (){}, icon: Icon(Icons.person)),
              ],
            ),
          ),
        )
    );
  }
}
