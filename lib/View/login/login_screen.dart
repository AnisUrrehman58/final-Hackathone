import 'package:final_hackaton_project/Utils/Constant/colors.dart';
import 'package:final_hackaton_project/Utils/Constant/images.dart';
import 'package:final_hackaton_project/View/SignUp/signup_screen.dart';
import 'package:flutter/material.dart';

import '../../CustomWidgets/text_field_widgets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return  GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            /// BackGround Image
            image: DecorationImage(image: AssetImage(AImages.backGroundImages),fit: BoxFit.cover),
          ),

          child: SingleChildScrollView(
            child: Padding(
              padding:  EdgeInsets.only(top: height * 0.12),
              child: Column(
                children: [
                  /// Login Logo
                  Image.asset(AImages.loginLogo,scale: 0.8),
                  SizedBox(height: height * 0.02),
                  const Text('Deliver Favourite Food',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 25)),
                  SizedBox(height: height * 0.03),
            
                  /// Login Container
                  Container(
                    padding: EdgeInsets.only(left: width * 0.05,top: height *0.03,right: width *0.05),
                    height: height * 0.5,
                    width: width *0.82,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AColor.loginContainer,
                    ),
                    child:  Column(
                      children: [
                        const Text('Login',style: TextStyle(fontSize: 27,fontWeight: FontWeight.bold,color: Colors.white),),
                        SizedBox(height: height * 0.03),
                        /// email field
                         const TextFiledWidgets(hintText: 'Email', prefixIcon: Icons.email),
                        SizedBox(height: height * 0.03),
                        /// Password field
            
                        const TextFiledWidgets(hintText: 'Password', prefixIcon: Icons.lock),
                         Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(onPressed: (){}, child: const Text('Forget Password?',style: TextStyle(color: Colors.white)),
                            )
                          ],
                        ),
                        SizedBox(height: height * 0.01),
                        SizedBox(
                          width: width,
                          height: height * 0.05,
                            child: ElevatedButton(onPressed: (){}, style: ElevatedButton.styleFrom(
                                backgroundColor: AColor.buttonBackGround,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                                child:  Text('Login',style: TextStyle(color: Colors.white.withOpacity(0.7),fontSize: 18,),))),
                        SizedBox(height: height * 0.01),
                        Text('Or',style: TextStyle(color: Colors.red.withOpacity(0.8))),
            
                         /// Social LogIn
                         Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             CircleAvatar(radius: 20,backgroundImage: AssetImage(AImages.google)),
                             SizedBox(width: width *0.05),
                             CircleAvatar(radius: 20,backgroundImage: AssetImage(AImages.faceBook)),
                           ],
                         ),
                      ],
                    ),
                  ),
                  SizedBox(height: height *0.02),
            
                  const Text("Don't have Account?",style: TextStyle(color: Colors.white,fontSize: 17),),
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_) => const SignupScreen()));
                  }, child:const Text('REGISTER',style: TextStyle(color: Colors.white,fontSize: 17),),
                  )
                ],
              ),
            ),
          ),
        ),

      ),
    );
  }
}

