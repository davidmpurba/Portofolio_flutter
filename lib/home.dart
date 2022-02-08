import 'package:flutter/material.dart';
import 'package:portofolio_i/login.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.black12,
          body: Container(
            padding: EdgeInsets.fromLTRB(0, 100, 0, 0),
            alignment: Alignment.center ,
            child: Column(
              children: [
                Image.asset("asset/Logo.png"),
                SizedBox(height: 20,),
                Text("Furnismi",style: TextStyle(color: Colors.amber,fontSize: 30,),),
                SizedBox(height: 10,),
                Text("Furniture High Quality",style: TextStyle(color: Colors.white),),
                SizedBox(height: 150,),
                RaisedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return login();
                    }));
                  },
                  color: Colors.white24,
                  child: Text("Login",style: TextStyle(color: Colors.white),),
                  padding: EdgeInsets.fromLTRB(100, 0, 100, 0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),

                SizedBox(height: 15,),
                RaisedButton(
                  onPressed: () {  },
                  color: Colors.white24,
                  child: Text("Sign up with email",style: TextStyle(color: Colors.white),),
                  padding: EdgeInsets.fromLTRB(60, 0, 60, 0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),

                SizedBox(height: 15,),

                RaisedButton(
                  onPressed: () {  },
                  color: Colors.white24,
                  child: Text("Continue with facebook",style: TextStyle(color: Colors.white),),
                  padding: EdgeInsets.fromLTRB(43, 0, 43, 0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                SizedBox(height: 5,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(padding: EdgeInsets.fromLTRB(110, 40, 0, 0)),
                    Text("Don't have an account?",style: TextStyle(color: Colors.white,fontSize:12 ), ),
                    SizedBox(width: 10,),
                    Text("Sign Up",style: TextStyle(color: Colors.blue,fontSize:12 ),)
                  ],
                ),
                SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 40)),
                    Image.asset("asset/ig.png",width: 25,),
                    Image.asset("asset/fb.png",width: 25,),
                    Image.asset("asset/twitter.png",width: 25,),
                    Image.asset("asset/globe.png",width: 25,)
                  ],
                )
              ],
            ),

          ),
        )
    );
  }
}
