import 'package:flutter/material.dart';
import '../../Styles/colors.dart';

//Navigators
void navigateTo(context,screen){
  Navigator.of(context).pushNamed(screen);
}

void navigateReplacement(context,screen){
  Navigator.of(context).pushReplacementNamed(screen);
}

//SizedBox Height
SizedBox height(h){
  return SizedBox(height: h,);
}
//SizedBox Width
SizedBox width(w){
  return SizedBox(width: w,);
}

//TextFormField
Widget buildTextFormField(w,{hint,obscureText=false,prefixIcon,suffixIcon,validate,onChanged,controller}){

  return Container(
    
    height: w*0.18,
    child: TextFormField(
      obscureText: obscureText,
      controller: controller,
      validator: validate,
      onChanged: onChanged,
      decoration: InputDecoration(
        focusedBorder:OutlineInputBorder(
          borderRadius: BorderRadius.circular(w*0.02),
          borderSide: BorderSide(color: green),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(w*0.02),
        ),
        hintText: hint,
        hintStyle: TextStyle(color: Colors.grey),
        filled: true,
        prefixIcon: Icon(prefixIcon,color: grey,),
        suffixIcon: suffixIcon,
        fillColor: Colors.grey[200],
        
      ),
    ),
  );
}

//Green TextButton

Widget greenTextButton(text,function){

  return TextButton(onPressed: function, child: Text(text,style:TextStyle(color: green),));
}

// Green Elevated Button

Widget greenElevatedButton(w,text,{onPressed}){
  return Container(
    padding: EdgeInsets.only(left: w*0.08),
    width: w*0.8,
    height: w*0.12,
    child: 
    ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(green)),
      onPressed: onPressed, child: Text(text)),
  );
}

Center loadingWidget(){
return const Center(child: CircularProgressIndicator(),);
}