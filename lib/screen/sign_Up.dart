import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:image_picker/image_picker.dart';
import 'package:roaia/localization/localization_methods.dart';
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

  String barcode ='';


  Future scanBarcode () async {
    try {
      barcode = await FlutterBarcodeScanner.scanBarcode(
          '#ff6666', 'cancel', true, ScanMode.BARCODE);

      debugPrint(barcode);
    } on PlatformException {
      barcode = 'Failed to get ' ;
    }
    if(!mounted) return;
    setState(() {
      barcode == barcode ;
    });
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 17.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const  SizedBox(
                height: 70,
              ),
              Center(
                child: Text(
                  tr("Roaia", context),style:const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Color(0xff1363DF)
                ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                tr("create", context),style:const TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  color: Color(0xff1363DF)
              ),
              ),
              const SizedBox(
                height: 40,
              ),
              Text(
               tr("first", context),style:const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color(0xff40444C),
              ),),
              const  SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 48,
                child: TextFormField(
                  decoration:InputDecoration(
                      labelText: tr("ename", context),
                      labelStyle:const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: Color(0xff96A0B6)
                      ),
                      border: const OutlineInputBorder()
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                tr("last", context),style:const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color(0xff40444C),
              ),),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 48,
                child: TextFormField(
                  decoration:InputDecoration(
                      labelText: tr("ename", context),
                      labelStyle:const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: Color(0xff96A0B6)
                      ),
                      border: const OutlineInputBorder()
                  ),
                ),
              ),
              const  SizedBox(
                height: 10,
              ),
              Text(
                tr("username", context),style:const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color(0xff40444C),
              ),),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 48,
                child: TextFormField(
                  decoration:InputDecoration(
                      labelText: tr("eusername", context),
                      labelStyle:const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: Color(0xff96A0B6)
                      ),
                      border: const OutlineInputBorder()
                  ),
                ),
              ),
              const  SizedBox(
                height: 10,
              ),
              Text(
                tr("mail", context),style:const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color(0xff40444C),
              ),),
              const  SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 48,
                child: TextFormField(
                  decoration:const InputDecoration(
                      labelText: 'ahmed.asad3988@gmail.com',
                      prefixIcon: Icon(Icons.email),
                      labelStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: Color(0xff96A0B6)
                      ),
                      border: OutlineInputBorder()
                  ),
                ),
              ),
              const  SizedBox(
                height: 20,
              ),
              Text(
               tr("password", context),style:const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color(0xff40444C),
              ),),
              const  SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 48,
                child: TextFormField(
                  decoration:InputDecoration(
                      labelText: tr("cpass", context),
                      suffixIcon:const Icon(Icons.visibility_outlined),
                      prefixIcon:const Icon(Icons.lock),
                      labelStyle:const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: Color(0xff96A0B6)
                      ),
                      border: const OutlineInputBorder( )
                  ),
                ),
              ),
              const  SizedBox(
                height: 20,
              ),
              Text(
                tr("id", context),style:const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color(0xff40444C),
              ),),
              const  SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width*.70,
                    height: 48,
                    child: TextFormField(
                      decoration:const  InputDecoration(
                          labelText: '   b4310c27-007f-451c-b9e0-bd4acb',
                          labelStyle: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                              color: Color(0xff96A0B6)
                          ),
                          border: OutlineInputBorder()
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width*.205555,
                    child: InkWell(
                        onTap: (){
                          scanBarcode();
                        },
                        child: Image.asset('assets/images/id.png',scale: .93,)),
                  ),
                ],
              ),
              const  SizedBox(
                height: 30,
              ),

               InkWell(
                 onTap: (){
                   upLoadImage();
                 },
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 20,
                          child: Divider(
                            thickness: 1.5,
                            height: 0,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                          child: VerticalDivider(
                            thickness: 1.5,
                            width: 0,
                            color: Colors.black,

                          ),
                        ),

                        SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          height: 20,
                          child: VerticalDivider(
                            thickness: 1.5,
                            width: 0,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                          child: Divider(
                            thickness: 1.5,
                            height: 0,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width*.78,
                      height: 48,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(tr("upload_photo", context),style:const TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: Color(0xff585858)
                          ),),
                          Image.asset('assets/images/gallery.png')

                        ],
                      ),
                    ),
                  const  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SizedBox(
                          width: 20,
                          child: Divider(
                            thickness: 1.5,
                            height: 0,
                            color: Colors.black,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 1.5),
                          child: SizedBox(
                            height: 20,
                            child: VerticalDivider(
                              thickness: 1.5,
                              width: 0,
                              color: Colors.black,
                            ),
                          ),
                        ),

                        SizedBox(
                          height: 20,
                        ),

                        Padding(
                          padding: EdgeInsets.only(right:1.5),
                          child: SizedBox(
                            height: 20,
                            child: VerticalDivider(
                              thickness: 1.5,
                              width: 0,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 1.5),
                          child: SizedBox(
                            width: 20,
                            child: Divider(
                              thickness: 1.5,
                              height: 0,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
              ),
               ),

             const SizedBox(
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
                         tr("agree", context),style:const TextStyle(
                        fontSize: 15,fontWeight: FontWeight.w500
                      ),),
                      Text(
                       tr("conditions", context),style:const TextStyle(
                          fontSize: 15,fontWeight: FontWeight.w500,
                        color: Color(0xff006FE8)
                      ),),
                    ],
                  ),
                ],
              ),
             const SizedBox(
                height: 12,
              ),
              Container(
                width: MediaQuery.of(context).size.width*90,
                height: 44,
                decoration: BoxDecoration(
                  color: const Color(0xff2C67FF),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: TextButton(
                  onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(
                      builder:(context) => const Login_Screen(), ));
                  },
                  child: Text(   tr("sign up", context),style:const TextStyle(
                      fontSize: 15,fontWeight: FontWeight.w500,color: Colors.white
                  ),),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                      tr("already", context),style:const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Color(0xff626C83)
                  ),),
                  const SizedBox(
                    width: 5,
                  ),
                  TextButton(
                    onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(
                        builder:(context) => const Login_Screen(), ));
                    },
                    child: Text(
                      tr("Login", context),style:const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Color(0xff007AFF)
                    ),),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),

            ],
          ),
        ),
      ),
    );
  }
}
