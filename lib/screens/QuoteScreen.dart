import 'package:flutter/material.dart';
import 'package:quotes/quotes.dart';
import 'package:share/share.dart';
import 'package:quoteflutter/widgets/FAB.dart';

class QuoteScreen extends StatefulWidget {
  @override
  _QuoteScreenState createState() => _QuoteScreenState();
}

class _QuoteScreenState extends State<QuoteScreen> {
  String type = Quotes.getRandom().getTags()[0].toUpperCase();
  String content = Quotes.getRandom().getContent().toUpperCase();
  String author = Quotes.getRandom().getAuthor().toUpperCase();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: <Color>[
                Colors.teal,
                Colors.lightBlue,
              ],
              begin: AlignmentDirectional.topCenter,
              end: AlignmentDirectional.bottomCenter,
            )
        ),
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox(height: 90.0,),
              Container(
                height: MediaQuery.of(context).size.height*0.5,
                width: MediaQuery.of(context).size.width*0.7,
                margin: EdgeInsets.symmetric(vertical: 50.0),
                padding: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.white.withOpacity(0.85),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      type,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 30.0,),
                    Text(
                      content,
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 30.0,),
                    Text(
                      author,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FAB(
                    onPressed: () {
                      setState(() {
                        type = Quotes.getRandom().getTags()[0].toUpperCase();
                        content = Quotes.getRandom().getContent().toUpperCase();
                        author = Quotes.getRandom().getAuthor().toUpperCase();
                      });
                    },
                    icon: Icons.refresh,
                  ),
                  SizedBox(width: 20.0,),
                  FAB(
                    onPressed: () {
                      Share.share(content);
                    },
                    icon: Icons.share,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}