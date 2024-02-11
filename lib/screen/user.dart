import 'package:flutter/material.dart';
import 'package:roaia/screen/add_contact.dart';

class User_Screen extends StatefulWidget {
  const User_Screen({super.key});

  @override
  State<User_Screen> createState() => _User_ScreenState();
}

class _User_ScreenState extends State<User_Screen> {
  List<String> title = [
    "Shahd Gomaa",
    "Alaa Gomaa",
    "Alaa Gomaa",
    "Alaa Gomaa",
    "Alaa Gomaa",
    "Alaa Gomaa",
  ];

  List<String> subtitle=[
    " Friend",
    " Friend",
    " Friend",
    " Friend",
    " Friend",
    " Friend",
  ];

  List subtitle2 = [
    '24 Years old',
    '24 Years old',
    '24 Years old',
    '24 Years old',
    '24 Years old',
    '24 Years old',

  ];

  List<String> image=[
    "assets/images/image5.png",
    "assets/images/image5.png",
    "assets/images/image5.png",
    "assets/images/image5.png",
    "assets/images/image5.png",
    "assets/images/image5.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 80,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 130,
                  ),
                  Container(
                    width: 113,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    borderRadius: BorderRadius.circular(22),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xffE5E5E5),
                          spreadRadius: 15,
                          blurRadius: 10,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        'Users',style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w800,
                        color: Color(0xff5095FF)
                      ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 55,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>Add_Contact_Screen(),
                          ));
                    },
                    child: Image.asset(
                        'assets/images/image6.png'),
                  ),

                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height:700,
                child: ListView.builder(
                  itemCount: title.length,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Color(0xff2323230A))
                      ),
                      child: ListTile(
                         leading: Image.asset("${image[index]}",),
                        title: Text(
                          "${title[index]}",style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16
                        ),
                        ),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                                '${subtitle[index]}',style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400
                            ),),
                            Text(
                              '${subtitle2[index]}',style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400
                            ),),
                          ],
                        ),
                        trailing: Icon(Icons.edit_rounded),
                      ),
                    );
                    // return  Column(
                    //   children: [
                    //     SizedBox(
                    //       height: 16,
                    //     ),
                    //     Row(
                    //       children: [
                    //         SizedBox(
                    //           width: 20,
                    //         ),
                    //         Image.asset("${image[index]}"),
                    //         SizedBox(
                    //           width: 10,
                    //         ),
                    //         Column(
                    //           crossAxisAlignment: CrossAxisAlignment.start,
                    //           children: [
                    //             Text(
                    //               "${title[index]}",style: TextStyle(
                    //                 fontSize: 14,fontWeight: FontWeight.w500,color: Color(0xff161C2B)
                    //             ),),
                    //             SizedBox(
                    //               height: 3,
                    //             ),
                    //             Text(
                    //               "${subtitle[index]}",style: TextStyle(
                    //                 fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xff6F6F79)
                    //             ),),
                    //           ],
                    //         ),
                    //         Spacer(),
                    //         Icon(
                    //           Icons.call_outlined,color: Colors.blue,),
                    //         SizedBox(
                    //           width: 25,
                    //         ),
                    //       ],
                    //     ),
                    //     SizedBox(
                    //       height: 16,
                    //     ),
                    //     Divider(
                    //       thickness: 2,
                    //       color: Color(0xffE9E9F1),
                    //     ),
                    //   ],
                    // );
                  },

                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}