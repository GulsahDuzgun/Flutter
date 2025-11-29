import 'package:flutter/material.dart';

class CustomAnswerBtn extends StatelessWidget {
  const CustomAnswerBtn({
    required this.btnText,
    required this.onTap,
    super.key,
  });

  final String btnText;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: Color.fromARGB(121, 39, 3, 49),
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      ),
      child: Text(btnText),
    );
  }
}
