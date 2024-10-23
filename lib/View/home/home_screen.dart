import 'package:final_hackaton_project/Utils/Constant/colors.dart';
import 'package:final_hackaton_project/Utils/Constant/images.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isSelected = true; // Track selection state
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return  GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        /// App Bar
        appBar: PreferredSize(preferredSize: Size.fromHeight(height * 0.12),
            child: AppBar(
              ///  Change Drawer icon color
              iconTheme: const IconThemeData(
                color: Colors.white,
              ),
              title:  Column(
                crossAxisAlignment:CrossAxisAlignment.start,
                children: [
                  Text('Delivery',style: TextStyle(fontSize: 15,color: Colors.white.withOpacity(0.6))),
                  const Text('Maplewood Suites',style: TextStyle(fontSize: 17,color: Colors.white,fontWeight: FontWeight.w500)),
                ],
              ),
              backgroundColor: Colors.transparent, // Make AppBar transparent
              flexibleSpace: Container(
                decoration:  BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(AImages.appBarBackGround), // Local image
                    fit: BoxFit.cover, // Adjust image to cover the background
                  ),
                ),
              ),
              actions: [
                GestureDetector(
                  onTap: () {
                    // Toggle the selection state on tap
                    setState(() {
                      isSelected = !isSelected;
                    });
                  },
                  child: Container(
                    margin: const EdgeInsets.only(right: 15, top: 12),
                    padding: const EdgeInsets.all(3.5),
                    height: 42,
                    width: width * 0.21,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: AColor.loginContainer,
                      border: Border.all(color: Colors.white.withOpacity(0.8)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Walk Icon Container
                        Expanded(
                          child: Container(
                            height: 39,
                            width: width * 0.10,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(9),
                              color: isSelected
                                  ? AColor.buttonBackGround
                                  : Colors.transparent,
                            ),
                            child: Image.asset('Assets/icons/walk.png'),
                          ),
                        ),

                        // Cycle Icon Container
                        Expanded(
                          child: Container(
                            height: 39,
                            width: width * 0.10,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(9),
                              color: !isSelected
                                  ? AColor.buttonBackGround
                                  : Colors.transparent,
                            ),
                            child: const Icon(Icons.directions_bike),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )),
        drawer:  Drawer(
          backgroundColor: AColor.buttonBackGround,
        ),

        /// Body
        body: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            /// BackGround Image
            image: DecorationImage(image: AssetImage(AImages.backGroundImages),fit: BoxFit.cover),
          ),
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: width * 0.04,vertical: height * 0.02),
            child: Column(
              children: [

                /// Search Field
                TextFormField(
                  style: const TextStyle(color: Colors.white),
                  decoration:  InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical:height *0.01 ),
                    hintText: 'Your order?',
                    hintStyle: TextStyle(color: Colors.white.withOpacity(0.5)),
                    suffixIcon: const Icon(Icons.qr_code_scanner,color: Colors.white),
                    prefixIcon: const Icon(Icons.search,color: Colors.white,size: 32),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:  const BorderSide(color: Colors.white,width:0.6)
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:  const BorderSide(color: Colors.white,width:0.6)
                      )

                  ),
                ),
                SizedBox(height: height * 0.03),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const TitleText(title: 'Categories'),
                    TextButton(onPressed: (){}, child:  Text('See all',style: TextStyle(color: Colors.white.withOpacity(0.5),fontSize: 15),))
                  ],
                )
              ],
            ),
          ),
        )

      ),
    );
  }
}

class TitleText extends StatelessWidget {
  const TitleText({
    super.key, required this.title,
  });
final String title;
  @override
  Widget build(BuildContext context) {
    return Text(title,style: const TextStyle(fontWeight: FontWeight.w500,fontSize: 18,color: Colors.white),);
  }
}

