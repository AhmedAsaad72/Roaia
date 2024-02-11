import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:roaia/screen/login.dart';

class Sign_Up_Screen extends StatefulWidget {
  const Sign_Up_Screen({super.key});

  @override
  State<Sign_Up_Screen> createState() => _Sign_Up_ScreenState();
}

class _Sign_Up_ScreenState extends State<Sign_Up_Screen> {

  File? image;
  final imagePicker = ImagePicker();

  upLoadImage() async{
    var pickedImage = await imagePicker.pickImage(source: ImageSource.gallery);

    if(pickedImage != null ){
      image =File(pickedImage.path);
    }else{}
  }

  bool agree = false;
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 17.0),
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
                'Create Account',style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  color: Color(0xff1363DF)
              ),
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                'First Name',style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color(0xff40444C),
              ),),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration:InputDecoration(
                    labelText: 'Enter Name',
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
                'Last Name',style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color(0xff40444C),
              ),),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration:InputDecoration(
                    labelText: 'Enter Name',
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
                    labelText: 'Create passowrd',
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
                height: 30,
              ),
              InkWell(
                onTap: upLoadImage,
                child: Image.asset(
                    'assets/images/image4.png'),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Checkbox(value: agree, onChanged: (val){
                    setState(() {
                      agree =val!;
                    });
                  }),
                  Row(
                    children: [
                      Text(
                          'I Agree &',style: TextStyle(
                        fontSize: 15,fontWeight: FontWeight.w500
                      ),),
                      Text(
                        ' Terms and conditions',style: TextStyle(
                          fontSize: 15,fontWeight: FontWeight.w500,
                        color: Color(0xff006FE8)
                      ),),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 12,
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
                    // Navigator.of(context).push(MaterialPageRoute(
                    //   builder:(context) => Login_Screen(), ));
                  },
                  child: Text(   "Sign Up",style: TextStyle(
                      fontSize: 15,fontWeight: FontWeight.w500,color: Colors.white
                  ),),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                      'Already have an Account?',style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Color(0xff626C83)
                  ),),
                  SizedBox(
                    width: 5,
                  ),
                  TextButton(
                    onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(
                        builder:(context) => Login_Screen(), ));
                    },
                    child: Text(
                      'Signin',style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Color(0xff007AFF)
                    ),),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),

            ],
          ),
        ),
      ),
    );
  }
}
