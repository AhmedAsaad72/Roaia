import 'package:flutter/material.dart';
import 'package:roaia/localization/localization_methods.dart';
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
              const SizedBox(
                height: 80,
              ),
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width*.30,
                  ),
                  Container(
                    width: 113,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    borderRadius: BorderRadius.circular(22),
                      boxShadow: const [
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
                       tr("users", context),style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w800,
                        color: Color(0xff5095FF)
                      ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width*.10,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>const Add_Contact_Screen(),
                          ));
                    },
                    child: Image.asset(
                        'assets/images/image6.png'),
                  ),

                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height:title.length*100,
                child: ListView.builder(
                  itemCount: title.length,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: const Color(0xff2323230A))
                      ),
                      child: ListTile(
                         leading: Image.asset("${image[index]}",),
                        title: Text(
                          "${title[index]}",style: const TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16
                        ),
                        ),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                                '${subtitle[index]}',style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400
                            ),),
                            Text(
                              '${subtitle2[index]}',style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400
                            ),),
                          ],
                        ),
                        trailing: const Icon(Icons.edit_rounded),
                      ),
                    );
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