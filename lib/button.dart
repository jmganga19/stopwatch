import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    this.text,
    this.tap,
  }) : super(key: key);
  final String? text;
  final Function? tap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tap as void Function()?,
      child: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.only(left: 20, right: 20, top: 70),
        padding: const EdgeInsets.only(left: 20, right: 20),
        height: 44,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [(new Color(0xff212121)), new Color(0xff212121)],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight),
          borderRadius: BorderRadius.circular(50),
          color: Colors.grey[200],
          // boxShadow: [
          //   BoxShadow(
          //       offset: Offset(0, 10),
          //       blurRadius: 50,
          //       color: Color(0xffEEEEEE)),
          // ],
        ),
        child: Text(
          text!,
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }
}
