import 'package:flutter/material.dart';

import '../../CustomWidgets/text_field_widgets.dart';
import '../../Utils/Constant/colors.dart';
import '../../Utils/Constant/images.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

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
            child: Column(
              children: [
                Padding(
                  padding:  EdgeInsets.only(left: width * 0.05,top: height *0.05),
                  child: Row(
                    children: [
                      CircleAvatar(backgroundColor: Colors.white,radius: 20,
                        child: IconButton(onPressed: (){
                          Navigator.pop(context);
                        }, icon: const Icon(Icons.arrow_back_ios)))
                    ],
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only(top: height * 0.04),
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
                            const Text('Signup',style: TextStyle(fontSize: 27,fontWeight: FontWeight.bold,color: Colors.white),),
                            SizedBox(height: height * 0.03),
                            /// email field
                            const TextFiledWidgets(hintText: 'Name', prefixIcon: Icons.person),
                            SizedBox(height: height * 0.03),
                            /// Password field
                            const TextFiledWidgets(hintText: 'Email', prefixIcon: Icons.email),
                            SizedBox(height: height * 0.03),
                            /// Password field
                            const TextFiledWidgets(hintText: 'Password', prefixIcon: Icons.lock),
                            SizedBox(height: height * 0.03),
                            SizedBox(
                                width: width,
                                height: height * 0.05,
                                child: ElevatedButton(onPressed: (){}, style: ElevatedButton.styleFrom(
                                    backgroundColor: AColor.buttonBackGround,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                                    child:  Text('Create Account',style: TextStyle(color: Colors.white.withOpacity(0.7),fontSize: 18,),))),
                            SizedBox(height: height * 0.01),

                          ],
                        ),
                      ),
                      SizedBox(height: height *0.02),

                      const Text("Already have an account?",style: TextStyle(color: Colors.white,fontSize: 17),),
                      TextButton(onPressed: (){}, child:const Text('Signup',style: TextStyle(color: Colors.white,fontSize: 17),),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),

      ),
    );  }
}
