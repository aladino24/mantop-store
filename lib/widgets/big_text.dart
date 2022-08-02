import 'package:flutter/cupertino.dart';
import 'package:mantap_store/utils/dimension.dart';

class BigText extends StatelessWidget {
  BigText(
      {Key? key,
      this.color = const Color(0xFF332d2b),
      required this.text,
      this.size = 0,
      this.overflow = TextOverflow.ellipsis})
      : super(key: key);
  final Color color;
  final String text;
  double size;
  TextOverflow overflow;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      overflow: overflow,
      style: TextStyle(
        fontFamily: 'Roboto',
        fontSize: size == 0 ? Dimension.font20 : size ,
        color: color,
        fontWeight: FontWeight.w400
      ),
    );
  }
}
