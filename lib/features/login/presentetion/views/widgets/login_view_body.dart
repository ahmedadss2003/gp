import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:login/features/login/presentetion/views/register_view.dart';
import 'package:login/features/login/presentetion/views/widgets/custom_button.dart';
import 'package:login/features/login/presentetion/views/widgets/custom_button_for_register.dart';
import 'package:login/features/login/presentetion/views/widgets/custom_show_snackbar.dart';
import 'package:login/features/login/presentetion/views/widgets/custom_text_form_field.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class LoginPageBody extends StatefulWidget {
  const LoginPageBody({super.key});

  @override
  State<LoginPageBody> createState() => _LoginPageBodyState();
}

class _LoginPageBodyState extends State<LoginPageBody> {
  GlobalKey <FormState>formKey = GlobalKey();
  bool inAsyncCall = false ;
    final TextEditingController emailController = TextEditingController() ;
    final TextEditingController passController = TextEditingController() ;


void signIn() async {
  try {
    final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: emailController.text,
      password: passController.text,
    );

        customShowSnackBar(msg: "You are logged in successfully.", context: context);

    setState(() {
      inAsyncCall = false; 
    });

  } on FirebaseAuthException catch (e) {
    setState(() {
      inAsyncCall = false ;
    });
    if (e.code == 'user-not-found') {
      customShowSnackBar(msg: 'No user found for that email.', context: context);
    } else if (e.code == 'wrong-password') {
      customShowSnackBar(msg: 'Wrong password provided for that user.', context: context);
    }
    
  } catch (e) {
    
    
    customShowSnackBar(msg: e.toString(), context: context);
  }
}

  @override
  Widget build(BuildContext context) {
    return  ModalProgressHUD(
      inAsyncCall: inAsyncCall,
      child: Form(
        key: formKey,
        child: Padding(
          padding:const EdgeInsets.symmetric(horizontal: 20),
          child:  SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 100,),
                const Icon(Icons.person ,size: 100,),
                const SizedBox(height: 200,),
                CustomTextFormFieldWidget(labelText: "Login",icon: Icons.email,controller:emailController , ),
                const SizedBox(height: 10,),
                CustomTextFormFieldWidget(labelText: "Password",icon:Icons.lock,controller: passController,),
                const SizedBox(height: 20,),
                CustomButton(
                  txt: "Login",
                  onPressed: (){
                    if(formKey.currentState!.validate()){
                      setState(() {
                        inAsyncCall = true ;
                      });
                      signIn() ;
                    }
                  },
                ),
                const SizedBox(height: 10,),
                CustomButtonForRegister(
                  
                  txt: "havn't An Account ?",
                  txtButton: "Register",
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return const RegisterView() ;
                    })) ;
                  },
                ),
                const SizedBox(height: 100,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
