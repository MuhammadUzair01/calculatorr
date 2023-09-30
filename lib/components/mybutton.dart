import 'package:flutter/material.dart';


class mybutton extends StatelessWidget {
  mybutton({
    super.key,required this.txt,
    this.colr=Colors.orange,
    required this.onPress
  });
  final String txt;
  final Color colr;
  final VoidCallback onPress;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: InkWell(
          onTap: onPress,
          child: Container(
            height: 60,
            decoration: BoxDecoration(
              color: colr,
              shape: BoxShape.circle,
            ),
            child: Center(child: Text(txt,style: TextStyle(fontSize: 20),)),
          ),
        ),
      ),
    );
  }
}