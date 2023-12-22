import 'package:dear2/home_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Container(
          padding: EdgeInsets.only(top: 100,bottom: 100),
          decoration: BoxDecoration(
            color: Colors.black,
            image: DecorationImage(
             image: AssetImage('assets/bg.png'),
              fit: BoxFit.cover,
              opacity: 0.6,
            )

          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Coffe shop",style:
              TextStyle(fontSize: 50,color: Colors.white
              ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height*0.55,),
              Column(
                children: [
                  Text("Feeling low? Take a Sip of Coffee",
                    style: TextStyle(
                    color: Colors.white.withOpacity(0.8),
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1,
                  ),
                  ),
                  SizedBox(height: 80,),
                  Material(
                    color: Color(0xFFE57734),
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context) => HomeScreen(),));
                      },
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical:15,horizontal:50 ),
                          child: Text("Get Start",style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold
                          ,letterSpacing: 1
                          )
                            ,),
                        ),
                    ),
                  ),
                ],
              )
            ],

          ),
        ),
      ),
    );
  }
}
