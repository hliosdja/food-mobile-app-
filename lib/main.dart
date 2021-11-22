import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Poppins',
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final style = ButtonStyle(
    padding: MaterialStateProperty.all(
        const EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0)),
    backgroundColor: MaterialStateProperty.all(Colors.black),
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
    ),
  );

  final kTextStyle = TextStyle(
    fontSize: 30.0,
    fontWeight: FontWeight.w900,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        toolbarHeight: 50.0,
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(Icons.sort),
          color: Colors.black,
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(CupertinoIcons.search),
            color: Colors.black,
            onPressed: () {},
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        ],
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    'Delicious Salads',
                    style: kTextStyle,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    'We made fresh and healthy food',
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ElevatedButton(
                          style: style,
                          child: Text('Salads'),
                          onPressed: () {},
                        ),
                        Spacer(),
                        ElevatedButton(
                          style: style.copyWith(
                              backgroundColor:
                                  MaterialStateProperty.all(Color(0xFFEAEAEA))),
                          child: Text('Soups',
                              style: TextStyle(color: Colors.black)),
                          onPressed: () {},
                        ),
                        Spacer(),
                        ElevatedButton(
                          style: style.copyWith(
                              backgroundColor:
                                  MaterialStateProperty.all(Color(0xFFEAEAEA))),
                          child: Text('Salads',
                              style: TextStyle(color: Colors.black)),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 15.0),
                  Icon(Icons.more_vert),
                ],
              ),
            ),
            SizedBox(height: 30.0),
            Stack(
              overflow: Overflow.visible,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color(0xFFEAEAEA),
                        borderRadius: BorderRadius.circular(100)),
                    // padding: const EdgeInsets.all(50.0),
                    height: 150.0,
                    width: double.infinity,
                    child: Row(
                      children: [
                        SizedBox(width: 160),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Chicken Salad',
                              style: kTextStyle.copyWith(
                                  fontSize: 20.0, fontWeight: FontWeight.w700),
                            ),
                            Text('Grilled Chicken Salad'),
                            Text(
                              '\$32.00',
                              style: kTextStyle.copyWith(
                                  fontSize: 20.0, fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        SizedBox(width: 10),
                        GestureDetector(
                            onTap: () {},
                            child: CircleAvatar(
                              backgroundColor: Colors.black,
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            )),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: MediaQuery.of(context).size.width - 410,
                  top: MediaQuery.of(context).size.height - 783,
                  child: Image.asset(
                    'assets/img/chicken-salad.png',
                    width: 200,
                    height: 200,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
