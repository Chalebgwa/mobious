import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatefulWidget {

  final VoidCallback signout;

  const Home({Key key, this.signout}) : super(key: key);


  @override
  State<StatefulWidget> createState() => new HomeState();

}

class HomeState extends State<Home> {



  Widget _buildItem(BuildContext context, int i){

    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  child: Text("J"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Pako Chalebgwa"),
              )
            ],
          ),
          Image.asset("images/0-0.png"),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton.icon(
                onPressed: null,
                icon: Icon(
                    FontAwesomeIcons.cannabis,
                ),
                label: Text("3"),
              ),
              FlatButton.icon(onPressed: null, icon: Icon(FontAwesomeIcons.comment), label: Text("3")),
              FlatButton.icon(onPressed: null, icon: Icon(FontAwesomeIcons.share), label: Text("3")),
            ],
          )
        ],
      )
    );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        actions: <Widget>[
          FlatButton(
              onPressed: (){
                widget.signout();
              },
              child: Icon(FontAwesomeIcons.bars)
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton.extended(
          onPressed: null,
          icon: Icon(FontAwesomeIcons.tshirt),
          label: Text("POST")
      ),
      body: ListView.builder(
          itemBuilder: _buildItem,
          itemCount: 10,
      ),
    );
  }

}