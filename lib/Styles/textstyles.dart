//TextStyles:

import 'package:flutter/material.dart';
import 'package:otbokhli_app/Styles/colors.dart';

TextStyle title(w){ 
  return TextStyle(
  color: Color(0xff0E122B),
  fontSize: w*0.055,
  fontFamily: 'Poppins',
  fontWeight: FontWeight.w600
);
}

TextStyle descriptionBlack(w){ 
  return TextStyle(
  color: black,
  fontSize: w*0.04,
  fontFamily: 'Poppins',
  fontWeight: FontWeight.w600
);
}

TextStyle descriptionGrey(w){ 
  return TextStyle(
  color: grey,
  fontSize: w*0.03,
  fontFamily: 'Poppins',
  fontWeight: FontWeight.w700
);
}

TextStyle descriptionOrange(w){ 
  return TextStyle(
  color: orange,
  fontSize: w*0.04,
  fontFamily: 'Poppins',
  fontWeight: FontWeight.w400
);
}

TextStyle descriptionGreen(w){ 
  return TextStyle(
  color: green,
  fontSize: w*0.04,
  fontFamily: 'Poppins',
  fontWeight: FontWeight.w400
);
}
