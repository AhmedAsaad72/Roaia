import 'package:flutter/material.dart';
import 'package:roaia/localization/localization_methods.dart';
import 'package:roaia/screen/home.dart';
import 'package:roaia/screen/patient_info2.dart';

class Patient_Info extends StatelessWidget {
  const Patient_Info({super.key});

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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height*.10,
              ),
              const Center(
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/images/image5.png'),
                ),
              ),
              const   Center(
                child:  Text(
                  'Ahmed',style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Colors.black
                ),),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height*.05,
              ),
              const Text(
                'Full Name : Ahmed Asad',style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Colors.black
              ),),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Age : 22',style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Colors.black
              ),),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Gender : Female',style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Colors.black
              ),),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Diseases : Diabetse',style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Colors.black
              ),),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                 Text(
                    tr("current_location", context),style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Colors.black
                  ),),
                  TextButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => const Home_Screen(), ));
                    },
                    child: Text(
                      tr("go_home", context),style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.blueAccent
                    ),),
                  ),

                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height*.10,
              ),
              Container(
                width: 360,
                height: 44,
                decoration: BoxDecoration(
                  color:const Color(0xff2C67FF),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: TextButton(
                  onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(
                      builder:(context) => const Patient_Info2(), ));
                  },
                  child: Text(tr("edit", context),style: const TextStyle(
                      fontSize: 15,fontWeight: FontWeight.w500,color: Colors.white
                  ),),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
