import 'package:bwa_chatty/theme.dart';
import 'package:bwa_chatty/widgets/chat.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    Map arguments = ModalRoute.of(context)!.settings.arguments as Map;
    IconData icon = arguments['icon'];
    String name = arguments['name'];
    int followers = arguments['followers'];

    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: (icon == null && name == null)
          ? const Text("Data tidak ada")
          : Column(
              children: [
                Container(
                  height: 140,
                  decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: const BorderRadius.vertical(
                          bottom: Radius.circular(30))),
                  child: SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(30, 30, 30, 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            icon,
                            size: 45,
                          ),
                          const SizedBox(width: 15),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                name,
                                style: titleTextStyle,
                              ),
                              Text(
                                '$followers followers',
                                style: subTitleTextStyle,
                              )
                            ],
                          ),
                          const Spacer(),
                          CircleAvatar(
                            radius: 20,
                            backgroundColor: greenColor,
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.call,
                              ),
                              color: whiteColor,
                              iconSize: 20,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Chat(
                    icon: Icons.account_box,
                    text: "Lorem ipsum dolor sit amet...",
                    time: "2.30"),
                Chat(
                    icon: Icons.account_circle,
                    text: "Lorem ipsum dolor sit amet...",
                    time: "11.11"),
                Chat(
                  icon: Icons.supervised_user_circle,
                  text: "Ini aku",
                  time: "11.12",
                  isMe: true,
                ),
                Chat(
                  icon: Icons.manage_accounts,
                  text: "Lorem ipsum dolor sit amet...",
                  time: "11.13",
                ),
              ],
            ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: TextField(
          decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(horizontal: 8, vertical: 15),
              hintText: "Type Message...",
              hintStyle: titleTextStyle,
              suffixIcon: CircleAvatar(
                backgroundColor: greyColor,
                radius: 10,
                child: Icon(
                  Icons.send,
                  color: Colors.grey.shade600,
                ),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              )),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
