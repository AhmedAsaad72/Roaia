import 'package:flutter/material.dart';
import 'package:roaia/localization/localization_methods.dart';
import 'package:roaia/screen/profile.dart';

class Edit_Profile extends StatelessWidget {
  const Edit_Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * .07,
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back_ios_new),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .10,
                  ),
                  Container(
                    width: 180,
                    height: 55,
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
                        tr("edit_profile_info", context),
                        style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w800,
                            color: Color(0xff5095FF)),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
               Stack(
                   children: [
                const CircleAvatar(
                  radius: 100,
                  backgroundImage: AssetImage('assets/images/image.png'),
                ),
                 Positioned(
                   top: 150,
                     left: 150,
                     child:CircleAvatar(
                         radius: 20,
                         child: Image.asset('assets/images/edit2.png' )))

              ],),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                    color: const Color(0xffF1F3F9),
                    borderRadius: BorderRadius.circular(12)
                ),
                child:Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(tr("first", context),style: const TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 18
                      ),),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        initialValue: 'Ahmed',
                        style: const TextStyle(
                            color: Color(0xff57534E),
                            fontSize: 20
                        ) ,
                        decoration: const InputDecoration(

                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                    color: const Color(0xffF1F3F9),
                    borderRadius: BorderRadius.circular(12)
                ),
                child:Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(tr("last", context),style: const TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 18
                      ),),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        initialValue: 'asaad',
                        style: const TextStyle(
                            color: Color(0xff57534E),
                            fontSize: 20
                        ) ,
                        decoration: const InputDecoration(

                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                    color: const Color(0xffF1F3F9),
                    borderRadius: BorderRadius.circular(12)
                ),
                child:Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(tr("username", context),style: const TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 18
                      ),),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        initialValue: 'Ahmed_123',
                        style: const TextStyle(
                            color: Color(0xff57534E),
                            fontSize: 20
                        ) ,
                        decoration: const InputDecoration(

                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                    color: const Color(0xffF1F3F9),
                    borderRadius: BorderRadius.circular(12)
                ),
                child:Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(tr("phone_num", context),style: const TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 18
                      ),),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        initialValue: '01102507463',
                        style: const TextStyle(
                            color: Color(0xff57534E),
                            fontSize: 20
                        ) ,
                        decoration: const InputDecoration(

                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                    color: const Color(0xffF1F3F9),
                    borderRadius: BorderRadius.circular(12)
                ),
                child:Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(tr("mail", context),style: const TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 18
                      ),),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        initialValue: 'ahmed.asad3988@gmail.com',
                        style: const TextStyle(
                            color: Color(0xff57534E),
                            fontSize: 20
                        ) ,
                        decoration:const InputDecoration(),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                    color: const Color(0xffF1F3F9),
                    borderRadius: BorderRadius.circular(12)
                ),
                child:Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(tr("password", context),style: const TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 18
                      ),),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        initialValue: '**********',
                        style: const TextStyle(
                            color: Color(0xff57534E),
                            fontSize: 20
                        ) ,
                        decoration: const InputDecoration(

                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width*.90,
                height: 44,
                decoration: BoxDecoration(
                  color: const Color(0xff2C67FF),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: TextButton(
                  onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(
                      builder:(context) => const Profile_Screen(), ));
                  },
                  child: Text(tr("save_changes", context),style: const TextStyle(
                      fontSize: 15,fontWeight: FontWeight.w500,color: Colors.white
                  ),),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
