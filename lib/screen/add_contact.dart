import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Add_Contact_Screen extends StatefulWidget {
  const Add_Contact_Screen({super.key});

  @override
  State<Add_Contact_Screen> createState() => _Add_Contact_ScreenState();
}

class _Add_Contact_ScreenState extends State<Add_Contact_Screen> {
  File? image;
  final imagePicker = ImagePicker();

  upLoadImage() async{
    var pickedImage = await imagePicker.pickImage(source: ImageSource.camera);

    if(pickedImage != null ){
      image =File(pickedImage.path);
    }else{}
  }

  bool agree = false;

  TakeImage() async{
    var pickedImage = await imagePicker.pickImage(source: ImageSource.gallery);

    if(pickedImage != null ){
      image =File(pickedImage.path);
    }else{}
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_new),
        title: Text(
          'Add Contact',style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: Color(0xff1363DF)
        ),
        ),
        centerTitle: true,
      ),
    body:SingleChildScrollView(
      child:Padding(
    padding: const EdgeInsets.symmetric(horizontal: 17.0),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    SizedBox(
    height: 50,
    ),
      Text(
        ' Name',style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: Color(0xff40444C),
      ),),
      SizedBox(
        height: 10,
      ),
      TextFormField(
        decoration:InputDecoration(
            labelText: 'Enter Contact”s name',
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
        'Age',style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: Color(0xff40444C),
      ),),
      SizedBox(
        height: 10,
      ),
      TextFormField(
        decoration:InputDecoration(
            labelText: 'Ex: 15',
            prefixIcon: Icon(Icons.account_circle),
            labelStyle: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 18,
                color: Color(0xff96A0B6)
            ),
            border: OutlineInputBorder( )
        ),
      ),
      SizedBox(
        height: 20,
      ),
      Text(
        'Relation',style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: Color(0xff40444C),
      ),),
      SizedBox(
        height: 10,
      ),
      TextFormField(
        decoration:InputDecoration(
            labelText: 'Ex: Friend',
            prefixIcon: Icon(Icons.account_circle),
            labelStyle: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 18,
                color: Color(0xff96A0B6)
            ),
            border: OutlineInputBorder( )
        ),
      ),
      SizedBox(
        height: 40,
      ),
      InkWell(
        onTap: upLoadImage,
        child: Image.asset(
            'assets/images/image7.png'),
      ),
      SizedBox(
        height: 35,
      ),
      InkWell(
        onTap: TakeImage,
        child: Image.asset(
            'assets/images/image4.png'),
      ),















    ],
    ),
    ),
    ),
    );

  }
}
