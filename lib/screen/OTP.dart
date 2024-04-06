import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:roaia/localization/localization_methods.dart';
import 'package:roaia/screen/Reset_Password.dart';

class OTP_Screen extends StatelessWidget {
  const OTP_Screen({super.key});

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
          tr("otp", context),style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: Color(0xff1363DF)
        ),
        ),
        centerTitle: true,
      ),
      body: Form(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14.0),
          child: Column(
            children: [
              const SizedBox(
                height: 15,
              ),
              Center(
                child: Text(
                    tr("authentication_code", context),style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Color(0xffABA9AB)
                ),),
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width:  MediaQuery.of(context).size.width*.14,
                    height: 53  ,
                    child: TextFormField(
                      onSaved: (pin1){},
                      onChanged: (value){
                        if (value.length == 1){
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      decoration:  InputDecoration(
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                      ),
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                     style: const TextStyle(
                       color: Colors.blueAccent
                     ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width*.14,
                    height: 53,
                    child: TextFormField(
                      onSaved: (pin1){},
                      onChanged: (value){
                        if (value.length == 1){
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      decoration:  InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                      ),
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                      style: const TextStyle(
                          color: Colors.blueAccent
                      ),
                    ),
                  ),
                  SizedBox(
                    width:  MediaQuery.of(context).size.width*.14,
                    height: 53,
                    child: TextFormField(
                      onSaved: (pin1){},
                      onChanged: (value){
                        if (value.length == 1){
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      decoration:  InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                      ),
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                      style: const TextStyle(
                          color: Colors.blueAccent
                      ),
                    ),
                  ),
                  SizedBox(
                    width:  MediaQuery.of(context).size.width*.14,
                    height: 53,
                    child: TextFormField(
                      onSaved: (pin1){},
                      onChanged: (value){
                        if (value.length == 1){
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                      ),
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                      style: const TextStyle(
                          color: Colors.blueAccent
                      ),
                    ),
                  ),
                  SizedBox(
                    width:  MediaQuery.of(context).size.width*.14,
                    height: 53,
                    child: TextFormField(
                      onSaved: (pin1){},
                      onChanged: (value){
                        if (value.length == 1){
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                      ),
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                      style: const TextStyle(
                          color: Colors.blueAccent
                      ),
                    ),
                  ),
                  SizedBox(
                    width:  MediaQuery.of(context).size.width*.14,
                    height: 53,
                    child: TextFormField(
                      onSaved: (pin1){},
                      onChanged: (value){
                        if (value.length == 1){
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                      ),
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                      style: const TextStyle(
                          color: Colors.blueAccent
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 37,
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
                      builder:(context) => const Reset_Password_Screen(), ));
                  },
                  child: Text(tr("verify", context),style: const TextStyle(
                      fontSize: 15,fontWeight: FontWeight.w500,color: Colors.white
                  ),),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                     tr("code_send", context),style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Color(0xff040508)
                  ),),
                  Text(
                    tr("time", context),style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      color: Color(0xff5095FF)
                  ),),
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}

