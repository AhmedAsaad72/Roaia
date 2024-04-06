import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:roaia/localization/localization_methods.dart';

class Patient_Info2 extends StatefulWidget {
  const Patient_Info2({super.key});

  @override
  State<Patient_Info2> createState() => _Patient_Info2State();
}

class _Patient_Info2State extends State<Patient_Info2> {

  int itemCount = 1 ;

  File? image;
  final imagePicker = ImagePicker();
  upLoadImage() async {
    var pickedImage = await imagePicker.pickImage(source: ImageSource.camera);

    if (pickedImage != null) {
      image = File(pickedImage.path);
    } else {}
  }

  String? man ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon:const Icon(Icons.arrow_back_ios_new),),
        title: Text(
          tr("patient_info", context),style: const TextStyle(
            color: Color(0xff1363DF),
            fontSize: 20,
            fontWeight: FontWeight.w700
        ),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height*.07,
              ),
              Text(
                tr("name", context),style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18,
                color: Color(0xff40444C)
              ),),
              SizedBox(
                height: 48,
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.person),
                    hintText: tr("eblind_name", context),
                    hintStyle: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color(0xffD6D3D1)
                    ),
                    border: const OutlineInputBorder(),
                  ),

                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height*.03,
              ),
              Text(
                tr("age", context),style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  color: Color(0xff40444C)
              ),),
              SizedBox(
                height: 48,
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.person),
                    hintText: tr("eblind_age", context),
                    hintStyle: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Color(0xffD6D3D1)
                    ),
                    border: const OutlineInputBorder(),
                  ),

                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height*.05,
              ),
              Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width*.40,
                    decoration: BoxDecoration(
                        border: Border.all(),
                    ),
                    child: RadioListTile(
                      title: Text( tr("female", context),style: const TextStyle(
                        fontSize: 13,fontWeight: FontWeight.bold
                      ),),
                        value: "Female",
                        groupValue: man,
                        onChanged: (val){
                          setState(() {
                            man = val ;
                          });
                        }),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width*.10,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width*.40,
                    decoration: BoxDecoration(
                      border: Border.all(),
                    ),

                    child: RadioListTile(
                      title: Text(tr("male", context),style: const TextStyle(
                          fontSize: 13,fontWeight: FontWeight.bold
                      ),),
                        value: "Male",
                        groupValue: man,
                        onChanged: (val){
                          setState(() {
                            man = val ;
                          });
                        }),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height*.04,
              ),
              Text(
                tr("enter_diseases", context),style: const TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                  color: Color(0xff40444C)
              ),),
                   Row(
                     crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: itemCount*75,
                        width: MediaQuery.of(context).size.width*.75,
                        child: ListView.builder(
                          itemCount: itemCount,
                        itemBuilder: (context , index){
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 10.0),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width*.75,
                              height: 48,
                              child: TextFormField(
                                decoration:const InputDecoration  (
                                  filled: true,
                                  fillColor: Color(0xffE9F2FF),
                                  border: OutlineInputBorder(),
                                ),

                              ),
                            ),
                          );
                        },
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width*.05,

                      ),
                       Padding(
                         padding: const EdgeInsets.only(top: 8.0),
                         child: InkWell(
                           onTap : (){
                             setState(() {
                               itemCount++;
                             });
                             print (
                               MediaQuery.of(context).size.width
                             );
                           },
                           child:const CircleAvatar(
                            radius: 17,
                            backgroundColor: Colors.black,
                              child: CircleAvatar(
                                radius: 15,
                                backgroundColor: Colors.white,
                                child: Icon(Icons.add,color: Colors.black,),
                              ),
                            ),
                         ),
                       ),
                    ],

              ),
              SizedBox(
                height: MediaQuery.of(context).size.height*.03,
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
                          Text(tr("take_photo", context),style:const TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: Color(0xff585858)
                          ),),
                          Image.asset('assets/images/camera.png')

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

              SizedBox(
                height: MediaQuery.of(context).size.height*.07,
              ),

              Container(
                width: 360,
                height: 44,
                decoration: BoxDecoration(
                  color: const Color(0xff2C67FF),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: TextButton(
                  onPressed: (){},
                  child: Text(tr("save", context),style: const TextStyle(
                      fontSize: 15,fontWeight: FontWeight.w500,color: Colors.white
                  ),),
                ),
              ),

              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
