import 'package:flutter/material.dart';


class utama extends StatefulWidget {
  const utama({Key? key}) : super(key: key);

  @override
  _utamaState createState() => _utamaState();
}

class _utamaState extends State<utama> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey[900],
        appBar: AppBar(
          backgroundColor: Colors.blueGrey[900],
          actions: [
            Image.asset("asset/love.png"),
            Image.asset("asset/keranjang.png"),
            Image.asset("asset/Logo.png"),

          ],
        ),
        body: SingleChildScrollView(

          child: Container(
            child: Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("asset/img-home.png"),fit: BoxFit.cover),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Text("Wood Collections",
                      style: TextStyle(color: Colors.white,fontSize:25,fontFamily: )),
                    Text("Furniture High Quality",
                      style: TextStyle(color: Colors.white,fontSize: 12),)
                    ],
                  )
                ),
                // Text("Wood Collections",style: TextStyle(),),
                // Text("Furniture High Quality")
                Container(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [

                      Text("Everything",style: TextStyle(color: Colors.white),),
                      Text("Wardrobe",style: TextStyle(color: Colors.white),),
                      Text("Chair",style: TextStyle(color: Colors.white),),
                      Text("Table",style: TextStyle(color: Colors.white),),
                      Text("Rack",style: TextStyle(color: Colors.white),),
                      Text("Board",style: TextStyle(color: Colors.white),),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                  children: [
                  ],
                  ),
                ),
              ],
            ),
          )
        ),
      ),
    );
  }
}
