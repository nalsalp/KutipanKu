import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "My App",
    home: new FirstPage(),
    routes: <String, WidgetBuilder>{
      '/FirstPage': (BuildContext context) => new FirstPage(),
      '/SecondPage': (BuildContext context) => new SecondPage()
    },
  ));
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.brown,
          title: new Text("MyApp"),
        ),
        body: new Center(
            child: new Container(
                width: 300.0,
                height: 500.0,
                child: Column(children: [
                  new MyCard(
                    icon: Icons.format_quote_rounded,
                    text:
                        '"Both FAITH and FEAR are products of our FOCUS. And the key to focus is ELIMINATION So, let us remove the noises of fear and focus our eyes, heart and minds to JESUS the Author and Finisher of our FAITH"',
                    icon_color: Colors.brown,
                  ),
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                        color: Colors.brown,
                        borderRadius: BorderRadius.all(Radius.circular(50))),
                    child: new IconButton(
                      color: Colors.white,
                      icon: new Icon(
                        Icons.arrow_forward_rounded,
                        size: 40,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/SecondPage');
                      },
                    ),
                  )
                ]))));
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.blue,
          title: new Text("MyApp"),
        ),
        body: new Center(
            child: new Container(
                width: 300.0,
                height: 500.0,
                child: Column(children: [
                  new MyCard(
                    icon: Icons.format_quote_rounded,
                    text: '"We did it !!!"',
                    icon_color: Colors.brown,
                  ),
                  new IconButton(
                    color: Colors.brown,
                    icon: new Icon(Icons.arrow_right, size: 30.0),
                    onPressed: () {
                      Navigator.pushNamed(context, '/FirstPage');
                    },
                  )
                ]))));
  }
}

class MyCard extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color icon_color;

  const MyCard(
      {Key? key,
      required this.icon,
      required this.text,
      required this.icon_color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Container(
        decoration: BoxDecoration(
            border: Border.all(color: Colors.brown.shade300, width: 7),
            borderRadius: BorderRadius.circular(20)),
        child: new Card(
          color: Colors.brown[100],
          child: Padding(
            padding: const EdgeInsets.fromLTRB(15, 10, 10, 25),
            child: new Column(
              children: <Widget>[
                new Icon(
                  icon,
                  size: 70.0,
                  color: icon_color,
                ),
                new Text(
                  text,
                  style: new TextStyle(
                      fontSize: 25, fontFamily: 'Cabin', color: Colors.brown),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        ));
  }
}
