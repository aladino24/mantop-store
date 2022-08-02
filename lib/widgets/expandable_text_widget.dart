import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mantap_store/utils/colors.dart';
import 'package:mantap_store/utils/dimension.dart';
import 'package:mantap_store/widgets/small_text.dart';

class ExpandableTextWidget extends StatefulWidget {
  final String text;
  const ExpandableTextWidget({Key? key, required this.text}) : super(key: key);

  @override
  State<ExpandableTextWidget> createState() => _ExpandableTextWidgetState();
}

class _ExpandableTextWidgetState extends State<ExpandableTextWidget> {
  late String firstHalf;
  late String secondHalf;

  bool hiddenText = true;
  double textHeight = Dimension.screenHeight/5.63;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if(widget.text.length > textHeight){
      firstHalf = widget.text.substring(0, textHeight.toInt());
      secondHalf = widget.text.substring(textHeight.toInt() + 1, widget.text.length);
    }else{
      firstHalf = widget.text;
      secondHalf = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondHalf.isEmpty ? SmallText(text: firstHalf,size: Dimension.font16,color: AppColors.descriptTextColor,) : Column(
        
        children: [
          SmallText(height: 1.2,text: hiddenText ? ("$firstHalf ...") : (firstHalf + secondHalf), size: Dimension.font16,color: AppColors.descriptTextColor,),
          InkWell(
            onTap: (){
              setState(() {
                hiddenText = !hiddenText;
              });
            },
            child: Row(
              children: [
                SmallText(text: hiddenText? "Show more" : "Show less"),
                Icon(
                  hiddenText? Icons.arrow_drop_down : Icons.arrow_drop_up,
                  color: AppColors.mainColor,
                ),
              ],
            ),

          ),
        ],
      ),
    );
  }
}