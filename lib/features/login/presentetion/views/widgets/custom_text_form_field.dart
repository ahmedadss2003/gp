
import 'package:flutter/material.dart';

class CustomTextFormFieldWidget extends StatelessWidget {
  const CustomTextFormFieldWidget(
      {super.key, this.onChanged, required this.labelText, required this.icon, this.controller});
  final String labelText;
  final IconData icon ;
  final TextEditingController? controller ;
  final Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: (value) {
        if (value!.isEmpty) {
          return "Field Is Required";
        }
        else{
          return null ;
        }
      },
      onChanged: onChanged,
      
      decoration: InputDecoration(
        prefixIcon:Icon(icon) ,
        labelText: labelText,
        labelStyle: const TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.w400
        ),
        enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white)),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blue),
        ),
      ),
    );
  }
}

