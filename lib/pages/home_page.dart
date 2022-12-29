import 'package:bwa_chatty/theme.dart';
import 'package:bwa_chatty/widgets/chat_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueColor,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 40,
                ),
                const Icon(Icons.supervised_user_circle, size: 130),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  'Sabrina Carpenter',
                  style: TextStyle(fontSize: 20, color: whiteColor),
                ),
                Text(
                  'Freelancer',
                  style: TextStyle(fontSize: 14, color: whiteColor),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(30),
                  decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: const BorderRadius.vertical(
                          top: Radius.circular(40))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Friends",
                        style: titleTextStyle,
                      ),
                      const ChatTile(
                          icon: Icons.account_box,
                          name: "Fadly Mubarok",
                          text: "Lorem ipsum dolor sit amet...",
                          time: "now",
                          unread: true, followers: 100,),
                      const ChatTile(
                          icon: Icons.account_circle,
                          name: "Asep",
                          text: "Lorem ipsum dolor sit amet...",
                          time: "2:30",
                          unread: false, followers: 1000,),

                      // groups
                      const SizedBox(height: 30),
                      Text(
                        "Groups",
                        style: titleTextStyle,
                      ),
                      const ChatTile(
                          icon: Icons.book,
                          name: "Jakarta Fair",
                          text: "Lorem ipsum dolor sit amet...",
                          time: "11:11",
                          unread: false),
                      const ChatTile(
                          icon: Icons.menu_book,
                          name: "Angga",
                          text: "Lorem ipsum dolor sit amet...",
                          time: "7:11",
                          unread: true),
                      const ChatTile(
                          icon: Icons.my_library_books,
                          name: "Bontley",
                          text: "Lorem ipsum dolor sit amet...",
                          time: "7:11",
                          unread: true),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: greenColor,
        onPressed: () {},
        child: const Icon(
          Icons.add,
          size: 28,
        ),
      ),
    );
  }
}
