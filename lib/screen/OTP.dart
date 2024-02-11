import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:roaia/screen/Reset_Password.dart';

class OTP_Screen extends StatelessWidget {
  const OTP_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_new),
        title: Text(
          'OTP Authentication',style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: Color(0xff1363DF)
        ),
        ),
        centerTitle: true,
      ),
      body: Form(
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            Center(
              child: Text(
                  'An authentication code has been \n            sent to you in SMS',style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: Color(0xffABA9AB)
              ),),
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: 71,
                  height: 68,
                  child: TextFormField(
                    onSaved: (pin1){},
                    onChanged: (value){
                      if (value.length == 1){
                        FocusScope.of(context).nextFocus();
                      }
                    },
                    decoration: InputDecoration(
                        hintText: '0',
                        border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                   style: TextStyle(
                     color: Colors.blueAccent
                   ),
                  ),
                ),
                SizedBox(
                  width: 71,
                  height: 68,
                  child: TextFormField(
                    onSaved: (pin1){},
                    onChanged: (value){
                      if (value.length == 1){
                        FocusScope.of(context).nextFocus();
                      }
                    },
                    decoration: InputDecoration(
                      hintText: '0',
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                    style: TextStyle(
                        color: Colors.blueAccent
                    ),
                  ),
                ),
                SizedBox(
                  width: 71,
                  height: 68,
                  child: TextFormField(
                    onSaved: (pin1){},
                    onChanged: (value){
                      if (value.length == 1){
                        FocusScope.of(context).nextFocus();
                      }
                    },
                    decoration: InputDecoration(
                      hintText: '0',
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                    style: TextStyle(
                        color: Colors.blueAccent
                    ),
                  ),
                ),
                SizedBox(
                  width: 71,
                  height: 68,
                  child: TextFormField(
                    onSaved: (pin1){},
                    onChanged: (value){
                      if (value.length == 1){
                        FocusScope.of(context).nextFocus();
                      }
                    },
                    decoration: InputDecoration(
                      hintText: '0',
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                    style: TextStyle(
                        color: Colors.blueAccent
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
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
                    builder:(context) => Reset_Password_Screen(), ));
                },
                child: Text("Submit",style: TextStyle(
                    fontSize: 15,fontWeight: FontWeight.w500,color: Colors.white
                ),),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                    'Code sent. Resend Code in ',style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Color(0xff040508)
                ),),
                Text(
                  ' 00:50',style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                    color: Color(0xff5095FF)
                ),),
              ],
            )

          ],
        ),
      ),
    );
  }
}

