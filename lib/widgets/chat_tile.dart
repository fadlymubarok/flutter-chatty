import 'package:bwa_chatty/theme.dart';
import 'package:flutter/material.dart';

class ChatTile extends StatefulWidget {
  const ChatTile(
      {super.key,
      required this.icon,
      required this.name,
      required this.text,
      required this.time,
      required this.unread, this.followers = 0});

  final IconData icon;
  final String name;
  final String text;
  final String time;
  final bool unread;
  final int followers;

  @override
  State<ChatTile> createState() => _ChatTileState();
}

class _ChatTileState extends State<ChatTile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, 'chat',
              arguments: {'name': widget.name, 'icon': widget.icon, 'followers': widget.followers});
        },
        child: Row(
          children: [
            Icon(
              widget.icon,
              size: 55,
            ),
            SizedBox(
              width: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.name, style: titleTextStyle),
                Text(
                  widget.text,
                  style: widget.unread
                      ? subTitleTextStyle.copyWith(color: Colors.black)
                      : subTitleTextStyle,
                )
              ],
            ),
            Spacer(),
            Text(
              widget.time,
              style: subTitleTextStyle,
            )
          ],
        ),
      ),
    );
  }
}
