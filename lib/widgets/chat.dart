import 'package:bwa_chatty/theme.dart';
import 'package:flutter/material.dart';

class Chat extends StatelessWidget {
  Chat(
      {super.key,
      required this.icon,
      required this.text,
      required this.time,
      this.isMe = false});

  final IconData icon;
  final String text;
  final String time;
  final bool isMe;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment:
            isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          isMe
              ? Container(
                  padding: const EdgeInsets.all(10),
                  height: 65,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(text),
                      SizedBox(height: 5),
                      Text(
                        time,
                        style: subTitleTextStyle,
                      )
                    ],
                  ),
                )
              : Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: CircleAvatar(
                      backgroundColor: Colors.grey,
                      foregroundColor: Colors.black,
                      child: Icon(icon))),
          const SizedBox(
            width: 10,
          ),
          isMe
              ? Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: CircleAvatar(
                      backgroundColor: Colors.grey,
                      foregroundColor: Colors.black,
                      child: Icon(icon)))
              : Container(
                  padding: const EdgeInsets.all(10),
                  height: 65,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(text),
                      SizedBox(height: 5),
                      Text(
                        time,
                        style: subTitleTextStyle,
                      )
                    ],
                  ),
                ),
        ],
      ),
    );
  }
}
