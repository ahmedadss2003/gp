  import 'package:firebase_auth/firebase_auth.dart';
  import 'package:flutter/cupertino.dart';
  import 'package:flutter/material.dart';
  import 'package:font_awesome_flutter/font_awesome_flutter.dart';
  import 'package:login/features/login/presentetion/views/widgets/Auth.dart';
  import 'package:login/features/login/presentetion/views/widgets/custom_button.dart';
  import 'package:login/features/login/presentetion/views/widgets/custom_button_for_register.dart';
  import 'package:login/features/login/presentetion/views/widgets/custom_show_snackbar.dart';
  import 'package:login/features/login/presentetion/views/widgets/custom_text_form_field.dart';
  import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

  class RegisterViewBody extends StatefulWidget {
    const RegisterViewBody({super.key});

    @override
    State<RegisterViewBody> createState() => _RegisterViewBodyState();
  }

  class _RegisterViewBodyState extends State<RegisterViewBody> {
    GlobalKey<FormState> formKey =GlobalKey();
    bool isloading=false;
    final TextEditingController emailController = TextEditingController() ;
    final TextEditingController passController = TextEditingController() ;


    

    @override
    Widget build(BuildContext context) {
      return  ModalProgressHUD(
        inAsyncCall:isloading ,
        child: Padding(
          padding:const EdgeInsets.symmetric(horizontal: 20),
          child:  Form(
            key:formKey ,
            child: SingleChildScrollView(
              child: Column(
                
                children: [
                  const SizedBox(height: 100,),
                  const Icon(Icons.person ,size: 100,),
                  const SizedBox(height: 10,),
                   const Row(
                     children: [
                      Text(
                        "Create Account.",
                        style: TextStyle(
                          fontSize: 30
                        ),
                        ),
                     ],
                   ),
                    const SizedBox(height: 40,),
                  CustomTextFormFieldWidget(
                    labelText: "Email",
                    icon: Icons.email,
                    controller: emailController,
                    ),
                  const SizedBox(height: 20,),
                  CustomTextFormFieldWidget(
                    labelText: "Password",
                    icon:Icons.lock,
                    controller: passController,
                    ),
                  const SizedBox(height: 20,),
                  const CustomTextFormFieldWidget(labelText: "Confirm Pasword",icon:Icons.lock,),
                  const SizedBox(height: 20,),
                  CustomButton(
                    txt: "Register",
                    onPressed: (){
                        if(formKey.currentState!.validate()){
                          setState(() {
                            isloading = true ;
                          });
                          signUp(); 
                        }
                      
                    },
                  ) ,
                  const SizedBox(height: 10,),
                  CustomButtonForRegister(
                    txt: "Already Have An Account ?",
                    txtButton: "Login",
                    onPressed: (){
                      Navigator.pop(context) ;
                    },
                  ) ,
                  const SizedBox(height: 20,),
                  const CustomSignInWithGoogle(),
                ],
                
              ),
            ),
          ),
        ),
      );
    }
      
       void signUp()async{
      try {
    final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: emailController.text,
      password: passController.text,
    );
    customShowSnackBar(msg: "Your account was created successfully!", context: context);
      setState(() {
      isloading = false;
    });
  } on FirebaseAuthException catch (e) {
    if (e.code == 'weak-password') {
      customShowSnackBar(msg: "The password provided is too weak." ,context:context ) ;
    } else if (e.code == 'email-already-in-use') {
      customShowSnackBar(msg: "The account already exists for that email.",context:context) ;
    }
  } catch (e) {
      customShowSnackBar(msg:e.toString(),context:context) ;

  }
    }
  }


class CustomSignInWithGoogle extends StatelessWidget {
  const CustomSignInWithGoogle({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ListTile(
        leading:  const Icon(FontAwesomeIcons.google,color: Colors.white),
        title:  const Center(
          child: Text(
            "Sign in With Google",
            style: TextStyle(
            fontSize: 18,
          ),),
        ),
        contentPadding: const EdgeInsets.only(left: 20 ), 
        tileColor: const Color.fromARGB(255, 112, 2, 142),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          
        ),
        onTap: (){
          Auth.signInWithGoogle(
            context: context ,
          ) ;
        },
      ),
    );
  }
}