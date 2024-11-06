import 'package:flutter/material.dart';
//<-----------------------------------------------⭐To display the text from left to right----------------------------------------------->

/*
void main(){
  //to control the flow of the data/text
  runApp(Text("Hello NPGC",textDirection:TextDirection.ltr));//ltr=>left to right
  //in urdu etc. rtl=> right to left
}
*/


//<-----------------------------------------------⭐To display the text in center from ltr----------------------------------------------->
//Center is another widget
/*
void main(){
  runApp(Center(child: Text("Hello NPGC", textDirection: TextDirection.ltr)));
}
*/

//<----------------------------------------------⭐To display the text in center from ltr with color blue and fontSize 50.0----------------->
//pointsize should be given in decimal
/*
void main(){
   runApp(Center(child:Text("Hello NPGC",textDirection:TextDirection.ltr,style:TextStyle(color:Colors.blue,fontSize:50.0),)));
}
*/

//<---------------------------------------------⭐To display the text with bg color in center from ltr with color and fontSize ------------->
//material is now parent of Center so using child
//for background color, you have to use Material widget
void main(){
  runApp(Material(
                  color:Colors.lightBlueAccent,
                  child:Center(
                    child:Text(
                      "Hello world",
                      textDirection: TextDirection.ltr,
                      style:TextStyle(color:Colors.amberAccent, fontSize:50.0),
                    )//Text
                  ),//Center
                 )//Material
        );//runApp
}