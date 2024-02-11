import 'package:flutter/material.dart';
import 'package:roaia/screen/botton_bar.dart';

class Reset_Password_Screen extends StatelessWidget {
  const Reset_Password_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_new),
        title: Text(
          'Reset Password',style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: Color(0xff1363DF)
        ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child:Padding(
        padding: const EdgeInsets.symmetric(horizontal: 17.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 15,
            ),
            Center(
              child: Text(
                  'Create strong and securd \n       new password',style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: Color(0xffABA9AB)
              ),),
            ),
            SizedBox(
              height: 40,
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
                  labelText: 'Enter passowrd',
                  suffixIcon: Icon(Icons.visibility_outlined),
                  prefixIcon: Icon(Icons.lock),
                  labelStyle: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      color: Color(0xff96A0B6)
                  ),
                  border: OutlineInputBorder( )
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Text(
              'Confirm Password',style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Color(0xff40444C),
            ),),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration:InputDecoration(
                  labelText: 'Enter passowrd',
                  suffixIcon: Icon(Icons.visibility_outlined),
                  prefixIcon: Icon(Icons.lock),
                  labelStyle: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      color: Color(0xff96A0B6)
                  ),
                  border: OutlineInputBorder( )
              ),
            ),
            SizedBox(
              height: 60,
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
                child: Text("Save Password",style: TextStyle(
                    fontSize: 15,fontWeight: FontWeight.w500,color: Colors.white
                ),),
              ),
            ),

          ],
        ),
      ),
      ),
    );
  }
}
