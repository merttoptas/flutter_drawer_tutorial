import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return new MaterialApp(

      theme: new ThemeData(
          primarySwatch: Colors.blue),
      home: new HomePage(),

    );
  }
}
class HomePage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return new Scaffold(

      appBar: new AppBar(

        title: Center(child: new Text("Flutter Drawer Tutorial")),
      ),

       drawer: new Drawer(
        child: new ListView(
              padding: EdgeInsets.zero,
            children: <Widget>[


              new UserAccountsDrawerHeader(accountName: new  Text('Mert Toptas', style: TextStyle(fontSize: 15.0,  fontWeight: FontWeight.bold , color: Colors.black),),
                  accountEmail: new Text('merttoptas34@gmail.com', style: TextStyle(color: Colors.black),),
                currentAccountPicture: new CircleAvatar(
                  backgroundColor: Colors.black,
                  child: new Text("MT"),
                ),
                decoration: BoxDecoration(
                  color: Colors.amber,
                ),
              ),
              new ListTile(
                trailing: new Icon(Icons.home),
                title: new Text ("Home"),
                onTap: (){
                  Navigator.push(context,
                      new MaterialPageRoute(builder: (context) => new PageHome()));
                },
              ),
              new ListTile(
                title: new Text("Photo"),
                trailing: new Icon(Icons.photo),
                onTap: (){
                  Navigator.push(context, new MaterialPageRoute(builder: (context) => new PagePhoto()));
                },
              ),

              //Section Line
              new Divider(),

              new ListTile(
                title: new Text("About"),
                trailing: new Icon(Icons.info),
              ),
              new ListTile(
                title: new Text("Exit"),
                trailing: new Icon(Icons.exit_to_app),
              ),
              new Divider(),

            ],
        ),
      ),

      );

  }
}

class PageHome extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(title: new Text("Home Page"),),
      body:  new Text(" You are on this Home Page"),
      
    );
  }
}

class PagePhoto extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(title: new Text("Photo Page"),),
      body:  new Text("You are on this Photo Page", textAlign: TextAlign.center,),

    );
  }
}
