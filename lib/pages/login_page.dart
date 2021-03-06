import 'package:flutter/material.dart';
import 'package:flutter_catlog/utils/my_route.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
              child: Column(
          children: [
            Image.asset("images/login_img.png",fit: BoxFit.cover,),
            SizedBox(height: 20.0,),
            Text("Welcome $name",style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold
            ),),
            SizedBox(height: 20.0,),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(
                children: [
                   TextFormField(
                decoration: InputDecoration(
                  hintText: "Enter Username",
                  labelText: "User Name"
                ),
                onChanged: (value){
                  print("$value");
                  name = value;

                  setState(() {});
                },
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Enter Password",
                  labelText: "Password"
                ),
                
              )
                ],
              ),
            ),
            SizedBox(height: 40.0,),
            InkWell(
              onTap: () async {
                setState(() {
                  changeButton = true;
                });
                await Future.delayed(Duration(seconds: 1));
                Navigator.pushNamed(context, MyRoutes.homeRoute);
              },
                          
                          child: AnimatedContainer(
                            duration: Duration(seconds: 1),
                width: changeButton?50:150,
                height: 50,
                alignment: Alignment.center,
                child: changeButton? Icon(Icons.done):Text("Login",
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14),),
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: changeButton?BorderRadius.circular(50): BorderRadius.circular(8)

                ),
              ),
            )
          ],
        ),
      ),
     
    );
  }
}