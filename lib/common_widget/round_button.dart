
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_food/common/color_extension.dart';

enum RoundButtomType{
  bgPrimary, textprimary
}

class RoundButton extends StatelessWidget{
  final VoidCallback onPressed;
  final String title;
  final RoundButtomType type;
  const RoundButton({super.key, 
  required this.title,
  required this.onPressed,
  this.type = RoundButtomType.bgPrimary});
  @override
  Widget build(BuildContext context){
    return InkWell(
      onTap: onPressed,
      child: Container(
                height: 56,
                decoration: BoxDecoration(
                  border: type == RoundButtomType.bgPrimary ? null: Border.all(color: TColor.primary,width: 1) ,
                  color:type == RoundButtomType.bgPrimary ? TColor.primary: TColor.secondaryText,
                 borderRadius:BorderRadius.circular(28) ),
                child: Text(
                  title,
                  style: TextStyle(color: type == RoundButtomType.bgPrimary ? TColor.secondaryText: TColor.primary, 
                   fontSize: 16,
                   fontWeight: FontWeight.w600),
                ),
              ),
    );
  }
}