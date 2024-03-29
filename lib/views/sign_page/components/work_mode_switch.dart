import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:duty_record_system/style/colors.dart';
import 'package:duty_record_system/controller/sign_controller.dart';

class WorkModeSwitch extends StatefulWidget {
  const WorkModeSwitch({super.key});

  @override
  _WorkModeSwitchState createState() => _WorkModeSwitchState(); 
}

class _WorkModeSwitchState extends State<WorkModeSwitch> {
  final ctrl = Get.find<SignController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center, 
      children: [
        WorkButton(  
          text: '上班',
          icon: Icons.work,
          side: 'left',
          filled: ctrl.onWork.value,
          onPressed: () {
            setState(() {
              ctrl.onWork.value = true;
            });
          },
        ),
        WorkButton(
          text: '下班',
          icon: Icons.hotel,
          side: 'right',
          filled: !ctrl.onWork.value,
          onPressed: () {
            setState(() {
              ctrl.onWork.value = false;
            }); 
          },
        ),
      ],
    );
  }
}

class WorkButton extends StatelessWidget {

  final String text;
  final IconData icon;
  final String side;
  final bool filled;
  final VoidCallback onPressed;
  
  const WorkButton({super.key, 
    required this.text,
    required this.icon,
    required this.side,
    required this.filled,
    required this.onPressed,
  }); 
  
  @override
  Widget build(BuildContext context) {
    return ElevatedButton( 
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: filled ? workBtnOnColor : workBtnOffColor,
        side: const BorderSide(
          color: workBtnBorderColor, 
        ),
        shape: RoundedRectangleBorder(
          borderRadius: side == 'left'
            ? const BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomLeft: Radius.circular(10)
              )
            : const BorderRadius.only(
                topRight: Radius.circular(10), 
                bottomRight: Radius.circular(10)
              )
        ),
        minimumSize: const Size(145, 50),
      ), 
      child: Row(
        children: [
          Icon(
            icon,  
            color: Colors.black,
            size: 18,
          ),
          const SizedBox(width: 8), 
          Text(
            text,
            style: const TextStyle(
              color: Colors.black,  
            ), 
          )
        ],
      )
    );
  }
}