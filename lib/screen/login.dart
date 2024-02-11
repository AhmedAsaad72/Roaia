import 'package:flutter/material.dart';
import 'package:roaia/screen/Forget_Password.dart';
import 'package:roaia/screen/botton_bar.dart';
import 'package:roaia/screen/sign_Up.dart';

class Login_Screen extends StatelessWidget {
  const Login_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 70,
            ),
            Center(
              child: Text(
                'Roaia',style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 25,
                color: Color(0xff1363DF)
              ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Login to your Account',style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 20,
                color: Color(0xff1363DF)
            ),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
                'Email',style: TextStyle(
                fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Color(0xff40444C),
            ),),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration:InputDecoration(
                labelText: 'Enter your mail',
                labelStyle: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                  color: Color(0xff96A0B6)
                ),
                border: OutlineInputBorder()
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Password',style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Color(0xff40444C),
            ),),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration:InputDecoration(
                  labelText: 'Password',
                  suffixIcon: Icon(Icons.visibility_outlined),
                  labelStyle: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      color: Color(0xff96A0B6)
                  ),
                  border: OutlineInputBorder()
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextButton(
              onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => Forget_Password_Screen(), ));
              },
              child: Text(
                  'Forget password?',style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 15,
                color: Color(0xff5095FF)
              ),),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              width: 360,
              height: 44,
              decoration: BoxDecoration(
                color: Color(0xff2C67FF),
                borderRadius: BorderRadius.circular(12),
              ),
              child: TextButton(
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(
                    builder:(context) => Botton_Bar(), ));
                },
                child: Text(   "Login",style: TextStyle(
                    fontSize: 15,fontWeight: FontWeight.w500,color: Colors.white
                ),),
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  child: Image.asset('assets/images/google.png'),
                ),
                Container(
                  child: Image.asset('assets/images/facebook.png',color: Colors.blue,),
                ),
                Container(
                  child: Image.asset('assets/images/twitter.png'),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Don’t have an account?',style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                    color: Color(0xff626C83)
                ),),
                SizedBox(
                  width: 5,
                ),
                TextButton(
                  onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(
                      builder:(context) => Sign_Up_Screen(), ));
                  },
                  child: Text('Signup',style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 16,
                    color: Color(0xff007AFF)
                ),),),
              ],
            ),
          ],
        ),
      ),
      ),
    );
  }
}
