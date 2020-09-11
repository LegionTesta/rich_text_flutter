import 'package:css_text/css_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:teste_html/store.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  HtmlStore htmlStore;

  @override
  Widget build(BuildContext context) {
    htmlStore = HtmlStore();
    htmlStore.setHtml();
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text("Demo")),
            body: Observer(builder: (context) {
              return htmlStore.loading
                  ? Container()
                  : Column(
                children: [
                    Container(
                        padding: EdgeInsets.all(16.0),
                        child: HTML.toRichText(context, htmlStore.html)
                    ),
                    RaisedButton(
                      onPressed: () {
                        htmlStore.addStyle();
                      },
                      child: Text(htmlStore.backgroundColor),
                  )
                ],
              );
            }
            )
        )
    );
  }
}
