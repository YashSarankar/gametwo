import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Container(
            constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height,
              maxWidth: MediaQuery.of(context).size.width,
            ),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.purple.shade900, Colors.purple.shade500],
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                    flex: 2,
                    child: Padding(
                      padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
                      child: Center(
                        child: Column(
                          children: [
                            Container(
                              width: double.infinity,
                              child: Text(
                                "Hi...",
                                style: TextStyle(color: Colors.white, fontSize: 24,fontWeight: FontWeight.w800),
                              ),
                            ),
                            SizedBox(height: 10,),
                            Container(
                              width: double.infinity,
                              child: Text(
                                "Play Smart, Win Big!",
                                style: TextStyle(color: Colors.white, fontSize: 24,fontWeight: FontWeight.w300),
                              ),
                            )
                          ],
                        ),
                      ),
                    )),
                Expanded(
                  flex: 4,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 40,left: 20,right: 20,bottom: 28
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("Sign Up",style:TextStyle(
                              fontWeight: FontWeight.w800,fontSize: 32,color: Colors.deepPurple
                          ),),
                          SizedBox(height: 40,),
                          TextFormField(
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.person),
                              labelText: 'User Name',
                              labelStyle: TextStyle(color: Colors.black),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black),
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                              contentPadding: EdgeInsets.symmetric(horizontal: 20),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.phone),
                              labelText: 'Mobile Number',
                              labelStyle: TextStyle(color: Colors.black),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black),
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                              contentPadding: EdgeInsets.symmetric(horizontal: 20),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.lock_open_rounded),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black),
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                              labelText: 'Password',
                              labelStyle: TextStyle(color: Colors.black),
                              contentPadding: EdgeInsets.symmetric(horizontal: 20),
                            ),
                          ),
                          SizedBox(height: 20,),
                          Container(
                            width: 365,
                            child: ElevatedButton(
                              onPressed: () {
                                Get.toNamed(Routes.HOME);
                              },
                              child: const Text('Sign Up'),
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<Color>(Colors.purple), // Background color
                                foregroundColor: MaterialStateProperty.all<Color>(Colors.white), // Text color
                                padding: MaterialStateProperty.all<EdgeInsetsGeometry>(EdgeInsets.all(18)), // Button padding
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                textStyle: MaterialStateProperty.all<TextStyle>(
                                  const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          TextButton(
                            onPressed: () {},
                            child: TextButton(
                              onPressed: (){
                                Get.toNamed(Routes.LOGIN);
                              },
                              child: const Text(
                                'have an account? Login',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
