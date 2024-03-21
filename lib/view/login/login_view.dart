import 'package:flutter/material.dart';
import 'package:flutter_food/common/color_extension.dart';
import 'package:flutter_food/common_widget/round_button.dart';
import 'package:flutter_food/common_widget/round_icon_button.dart';
import 'package:flutter_food/common_widget/round_textfield.dart';
import 'package:flutter_food/view/login/rest_password_view.dart';
import 'package:flutter_food/view/login/sign_up_view.dart';

class LonginView extends StatefulWidget {
  const LonginView({super.key});

  @override
  State<LonginView> createState() => _LonginViewState();
}

class _LonginViewState extends State<LonginView> {

  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {

    var media = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 64,),
              Text("Login",
               style: TextStyle(
                color: TColor.primaryText, 
                fontSize: 30, 
                fontWeight: FontWeight.w800),),
              Text("Add your details to login",
               style: TextStyle(
                color: TColor.secondaryText, 
                fontSize: 14, 
                fontWeight: FontWeight.w500),),
          
                const SizedBox(height: 25,),

                RoundTextfield(
                  hintText:"Your Email",
                   controller: txtEmail,
                   keyboardType: TextInputType.emailAddress,
                   ),

                const SizedBox(height: 25,),

                RoundTextfield(
                  hintText:"Password",
                   controller: txtPassword,
                   obscureText: true,
                   ),

                const SizedBox(height: 25,),

                RoundButton(title: "Login", onPressed: (){}),

                const SizedBox(height: 4,),

                TextButton(
                  onPressed: (){
                    Navigator.push(
                    context, 
                    MaterialPageRoute(
                      builder: (context) => const ResetPasswordView(),
                      ),
                    );
                }, 
                child: Text("Forgot your password? ",
                style: TextStyle(
                color: TColor.secondaryText, 
                fontSize: 14, 
                fontWeight: FontWeight.w500),
                ),
              ),

              const SizedBox(height: 30,),

              Text("or Login with",
               style: TextStyle(
                color: TColor.secondaryText, 
                fontSize: 14, 
                fontWeight: FontWeight.w500),),
              
               const SizedBox(height: 30,),
               RoundIconButton( icon: "assets/img/facebook_logo.png", title: "Login with Facebook",color:const Color(0xff367FC0),onPressed: (){},),

               
            const SizedBox(height: 25,),

            RoundIconButton( icon: "assets/img/google_logo.png", title: "Login with Google",color:const Color(0xffDD4B39),onPressed: (){},),

               
            const SizedBox(height: 80,),

            TextButton(
              onPressed: (){
                  Navigator.push(
                    context, 
                    MaterialPageRoute(
                      builder: (context) => SignUpView(),
                      ),
                    );
                }, child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("Don't have an Account? ",
                                   style: TextStyle(
                    color: TColor.primary, 
                    fontSize: 14, 
                    fontWeight: FontWeight.w700),
                    ),
                    Text("Sign Up",
                                   style: TextStyle(
                    color: TColor.primary, 
                    fontSize: 14, 
                    fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}