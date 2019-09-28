import 'package:Netflix_clone/detailspage.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.cast, color: Colors.white),
        backgroundColor: Color.fromRGBO(105, 105, 105, 1),
        tooltip: 'Cast to Screen',
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10),
              child: Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        width: 40,
                        height: 40,
                        child: Image.asset('assets/images/flix.png'),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      buildTextTitle('TV Shows'),
                      SizedBox(width: 30),
                      buildTextTitle('Movies'),
                      SizedBox(width: 30),
                      buildTextTitle('My List'),
                    ],
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 100.0,
                  ),
                  Container(
                    height: 150,
                    width: double.infinity,
                    padding: EdgeInsets.all(20),
                    child: Image.asset('assets/images/alclogo.png'),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 50.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text.rich(
                        TextSpan(
                            text:
                                'Future  •  Sci-fi  •  Apocalypse  •  Netflix Original'),
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Montserrat',
                            fontSize: 13),
                      )
                    ],
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      FlatButton(
                        textColor: Colors.white70,
                        onPressed: () {},
                        child: Column(
                          children: <Widget>[
                            IconButton(
                              icon: Icon(Icons.add, color: Colors.white),
                              onPressed: () {
                                _showToast(context);
                              },
                            ),
                            Text('My List')
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      FlatButton(
                        color: Colors.white,
                        onPressed: () {},
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.play_arrow),
                            Text(
                              'Play',
                              style: TextStyle(fontFamily: 'Montserrat'),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      FlatButton(
                        textColor: Colors.white70,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetailsPage(data: 'Alc')),
                          );
                        },
                        child: Column(
                          children: <Widget>[
                            Icon(
                              Icons.info_outline,
                              color: Colors.white,
                            ),
                            Text('Info')
                          ],
                        ),
                      )
                    ],
                  )
                ],
              )),
              width: double.infinity,
              height: 500.0,
              decoration: BoxDecoration(
                  color: Colors.blue,
                  image: DecorationImage(
                      image: AssetImage('assets/images/alc.jpg'),
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.5), BlendMode.multiply),
                      fit: BoxFit.fill)),
            ),
            SizedBox(
              height: 10.0,
              width: double.infinity,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(width: 10.0, height: 10.0),
                Text.rich(
                  TextSpan(
                      text: 'Continue watching for Jugal (the developer 😉)'),
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Montserrat'),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 5.0),
              height: 240.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      DetailsPage(data: 'Ghl')));
                        },
                        child: buildCardImage(
                          'assets/images/ghoul.jpg',
                        ),
                      ),
                      buildEpisodeContainer('S01:E03'),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      buildCardImage('assets/images/str2.jpg'),
                      buildEpisodeContainer('S02:E05'),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      DetailsPage(data: 'Alc')));
                        },
                        child: buildCardImage(
                          'assets/images/alc.jpg',
                        ),
                      ),
                      buildEpisodeContainer('S01:E02'),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(width: 10.0, height: 10.0),
                Text.rich(
                  TextSpan(text: 'Top Picks For You'),
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w800,
                      fontFamily: 'Montserrat'),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 5.0),
              height: 200.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  buildTopPicksItem(context, 'Ghl', 'assets/images/ghoul.jpg'),
                  buildTopPicksItem(context, 'Alc', 'assets/images/alc.jpg'),
                  buildTopPicksItem(context, 'Hoc', 'assets/images/hox.jpg'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Text buildTextTitle(String title) {
    return Text(
      title,
      style: TextStyle(fontSize: 15, color: Colors.white),
    );
  }

  GestureDetector buildTopPicksItem(
      BuildContext context, String data, String imageSrc) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DetailsPage(data: data)),
        );
      },
      child: Container(
        child: Image.asset(imageSrc),
        margin: EdgeInsets.symmetric(horizontal: 5.0),
        width: 130.0,
      ),
    );
  }

  Container buildCardImage(String src) {
    return Container(
      height: 200.0,
      decoration: BoxDecoration(image: DecorationImage(image: AssetImage(src))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Icon(Icons.play_circle_outline,
                color: Colors.white.withOpacity(0.8), size: 80.0),
          )
        ],
      ),
      margin: EdgeInsets.symmetric(horizontal: 5.0),
      width: 130.0,
    );
  }

  Container buildEpisodeContainer(String episode) {
    return Container(
        color: Colors.black,
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text.rich(
              TextSpan(text: episode),
              style: TextStyle(
                  color: Colors.white.withOpacity(0.7),
                  fontSize: 19.0,
                  fontFamily: 'Montserrat'),
            ),
            SizedBox(
              height: 40.0,
              width: 15.0,
            ),
            Icon(Icons.info_outline, color: Colors.grey, size: 22.0)
          ],
        ),
        height: 40.0,
        width: 136.0);
  }

  void _showToast(BuildContext context) {
    final scaffold = Scaffold.of(context);
    scaffold.showSnackBar(
      SnackBar(
        content: const Text('Added to My List'),
        action: SnackBarAction(
            textColor: Colors.white54,
            label: 'OK',
            onPressed: scaffold.hideCurrentSnackBar),
      ),
    );
  }
}
