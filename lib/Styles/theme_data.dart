import 'package:flutter/material.dart';
import 'package:otbokhli_app/Styles/colors.dart';


//A Function Returning Light/Dark Theme depending on a bool value
ThemeData toggleThemes({bool? isDarkTheme=false}){

  // Return Light Theme
  if(!isDarkTheme!){
    return ThemeData(
      appBarTheme: AppBarTheme(
        color: green,
      )
    );


  
  }else{ //Return Dark Theme 
  
    return ThemeData();
  }
  
  


}