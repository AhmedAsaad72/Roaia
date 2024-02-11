import 'package:flutter/material.dart';
import 'package:roaia/screen/OTP.dart';

class Forget_Password_Screen extends StatelessWidget {
  const Forget_Password_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      leading: Icon(Icons.arrow_back_ios_new),
        title: Text(
          'Forget Password',style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w700,
          color: Color(0xff1363DF)
        ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 17.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 50,
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
                  labelText: 'Ex, shahdibrahiem@gmail.com',
                  prefixIcon: Icon(Icons.email),
                  labelStyle: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      color: Color(0xff96A0B6)
                  ),
                  border: OutlineInputBorder()
              ),
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
                    builder:(context) => OTP_Screen(), ));
                },
                child: Text("Reset Password",style: TextStyle(
                    fontSize: 15,fontWeight: FontWeight.w500,color: Colors.white
                ),),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
