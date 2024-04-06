import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:roaia/localization/localization_methods.dart';

class Add_Contact_Screen extends StatefulWidget {
  const Add_Contact_Screen({super.key});

  @override
  State<Add_Contact_Screen> createState() => _Add_Contact_ScreenState();
}

class _Add_Contact_ScreenState extends State<Add_Contact_Screen> {
  File? image;
  final imagePicker = ImagePicker();

  TakeImage() async {
    var pickedImage = await imagePicker.pickImage(source: ImageSource.camera);

    if (pickedImage != null) {
      image = File(pickedImage.path);
    } else {}
  }

  bool agree = false;

  upLoadImage() async {
    var pickedImage = await imagePicker.pickImage(source: ImageSource.gallery);

    if (pickedImage != null) {
      image = File(pickedImage.path);
    } else {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios_new)),
        title: Text(
         tr("add_contact", context),
          style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: Color(0xff1363DF)),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 17.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 50,
              ),
              Text(
                tr("name", context),
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff40444C),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: tr("enter_contact_name", context),
                    labelStyle: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                        color: Color(0xff96A0B6)),
                    border: const OutlineInputBorder()),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                tr("age", context),
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff40444C),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: tr("enter_contact_age", context),
                    prefixIcon: const Icon(Icons.account_circle),
                    labelStyle: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                        color: Color(0xff96A0B6)),
                    border: const OutlineInputBorder()),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                tr("relation", context),
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff40444C),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: tr("enter_relation", context),
                    prefixIcon: const Icon(Icons.account_circle),
                    labelStyle: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                        color: Color(0xff96A0B6)),
                    border: const OutlineInputBorder()),
              ),
              const SizedBox(
                height: 40,
              ),
              InkWell(
                onTap: (){
                  TakeImage();
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
              const SizedBox(
                height: 35,
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
                height: 35,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
