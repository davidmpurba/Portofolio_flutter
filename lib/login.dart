import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:portofolio_i/home.dart';
import 'package:form_validation/form_validation.dart';
import 'package:portofolio_i/utama.dart';




class login extends StatefulWidget {


  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  GlobalKey<FormState> _formkey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

        backgroundColor: Colors.blueGrey[900],
        appBar: AppBar(

          backgroundColor: Colors.blueGrey[900],
          leading: IconButton(onPressed: () {

            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) {
                  return home();
                } ));
          },
              icon: Icon(Icons.arrow_back_ios)),
          actions: [

            Image.asset("asset/Logo.png"),
            Padding(padding: EdgeInsets.fromLTRB(0, 0, 10, 0))
          ],
        ),
        body: SingleChildScrollView(
          child: Container(

            child: Column(
           textDirection: TextDirection.ltr,
              children: [

                SizedBox(height: 80,),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(padding: EdgeInsets.symmetric(horizontal: 160)),
                      Text("Log into",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
                      Text("your account",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
                    ],
                  ),

                //   child: Text("Log into",style: TextStyle(color: Colors.white,fontSize: 30),),
                // ),
                // Container(
                //   child: Text("your account",style: TextStyle(color: Colors.white,fontSize: 30),),
                ),

                SizedBox(height: 40),

                Container(
                   child: SizedBox(
                     width: 330,
                     child: TextFormField(
                         decoration: InputDecoration(
                           contentPadding:
                           EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                           hintText: "Input your email",
                           labelText: "Email",
                           labelStyle: TextStyle(color: Colors.black,fontSize: 15,),
                           border: UnderlineInputBorder(
                             borderRadius: BorderRadius.only(topLeft: Radius.circular(10.0),topRight: Radius.circular(10.0)),
                           ),
                           fillColor: Colors.white,
                           filled: true,
                         ),
                       validator: (value) {
                         var validator = Validator(
                           validators: [
                             RequiredValidator(),
                             EmailValidator(),
                           ],
                         );

                         return validator.validate(
                           context: context,
                           label: 'Email',
                           value: value,
                         );
                       }
                       )
                   ),
                ),
                SizedBox(height: 3),
                Container(
                  child: SizedBox(
                      width: 330,
                      child: TextFormField(
                        decoration: InputDecoration(
                          contentPadding:
                          EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                          labelStyle: TextStyle(color: Colors.black,fontSize: 15),
                          hintText: "Input your Password",
                          labelText: "Password",
                          border: UnderlineInputBorder(
                            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10.0),bottomRight: Radius.circular(10.0)),
                          ),
                          fillColor: Colors.white,
                          filled: true,
                        ),
                        validator: (value) {
                          if(value!.isEmpty ||RegExp(r'^[a-z A-Z]+$').hasMatch(value!)){
                            return "Email anda salah";
                          }else{
                            return null;
                          }
                        },
                      )
                  ),
                ),
                    SizedBox(height: 15,),

                    RaisedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return utama();
                        }));
                      },

                      color: Colors.white24,
                      child: Text("Send",style: TextStyle(color: Colors.white),),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 150, vertical: 15),
                    ),

                    SizedBox(height: 30,),

                  Text("or sign up with social account",style: TextStyle(color: Colors.white),),

                SizedBox(height: 30,),

                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 150,
                        height: 45,
                        color: Colors.transparent,
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black,
                            ),
                            color: Colors.pink[200],
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Center(
                                child: ImageIcon(AssetImage("asset/ig2.png"),color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ),
                  SizedBox(width: 40),
                      Container(
                        width: 150,
                        height: 45,
                        color: Colors.transparent,
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black,
                            ),
                            color: Colors.cyanAccent[700],
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Center(
                                child: ImageIcon(AssetImage("asset/twitter2.png"),color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ),

                    ],
                  ),
                ),

            SizedBox(height: 120,),

                Container(
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset("asset/ig.png",width: 25,),
                      Image.asset("asset/fb.png",width: 25,),
                      Image.asset("asset/twitter.png",width: 25,),
                      Image.asset("asset/globe.png",width: 25,)
                    ],
                  ),
                )

              ],

            ),
          ),
        ),
      )
    );
  }
}
