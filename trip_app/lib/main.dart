import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ));

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController? _pageController;

  void _onScroll() {}

  @override
  void initState() {
    _pageController = PageController(
      initialPage: 0,
    )..addListener(_onScroll);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
      controller: _pageController,
      children: <Widget>[
        makePage(
            image: 'assets/images/four.jpg',
            title: 'Title 01',
            description: 'description 01'),
        makePage(
            image: 'assets/images/three.jpg',
            title: 'Title 02',
            description: 'description 02'),
        makePage(
            image: 'assets/images/two.jpg',
            title: 'Title 03',
            description: 'description 03'),
        makePage(
            image: 'assets/images/one.jpg',
            title: 'Title 04',
            description: 'description 04'),
      ],
    ));
  }

  Widget makePage({image, title, description}) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.bottomRight, stops: [
          .3,
          .9
        ], colors: [
          Colors.black.withOpacity(.9),
          Colors.black.withOpacity(.2)
        ])),
        child: Padding(
          padding: EdgeInsets.all(20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    '1',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '/4',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  )
                ]),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 5),
                        child: Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 15,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 5),
                        child: Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 15,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 5),
                        child: Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 15,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 5),
                        child: Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 15,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 5),
                        child: Icon(
                          Icons.star,
                          color: Colors.grey,
                          size: 15,
                        ),
                      ),
                      Text(
                        '4.0',
                        style: TextStyle(color: Colors.white70),
                      ),
                      Text(
                        '(2300)',
                        style: TextStyle(color: Colors.white38, fontSize: 12),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 50),
                    child: Text(
                      description,
                      style: TextStyle(
                          color: Colors.white.withOpacity(.7),
                          height: 1.5,
                          fontSize: 15),
                    ),
                  )
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
