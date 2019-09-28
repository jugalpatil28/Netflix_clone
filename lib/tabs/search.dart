import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.black12,
            elevation: 10.0,
            title: TextField(
              style: TextStyle(color: Colors.white),
              cursorColor: Colors.white,
              decoration: InputDecoration(
                  counterStyle: TextStyle(
                    color: Colors.white,
                  ),
                  prefixIcon: Icon(Icons.search, color: Colors.white),
                  hintText: 'Search',
                  suffixStyle: TextStyle(color: Colors.white),
                  hintStyle: TextStyle(
                    color: Colors.white,
                  ),
                  suffixIcon: Icon(Icons.mic, color: Colors.white)),
            )),
        backgroundColor: Colors.black87,
        body: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 30.0),
              ),
              Text.rich(
                TextSpan(text: 'Find what to watch next.'),
                style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w600),
              ),
              Flexible(
                fit: FlexFit.loose,
                child: Text(
                  'Search for shows for the commute, movies to help unwind or your go-to genres.',
                  style: TextStyle(color: Colors.white54, fontSize: 13),
                ),
              )
            ],
          ),
        ));
  }
}
