import 'package:clone_chat_app/Presentation/layout_widget.dart';
import "package:flutter/material.dart";

import 'package:go_router/go_router.dart';

var userList = [
  {"name": "gurpinder singh", "message": "this is message one"},
  {"name": "Avneet Singh", "message": "this is  message two"},
  {"name": "Navjot Singh", "message": "this is message three"},
  {"name": "Randhir", "message": "this is message four"},
  {"name": "Ranjit Singh", "message": "this is message five"}
];

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return LayoutWidget(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 5),
        child: ListView.builder(
          itemCount: userList.length,
          itemBuilder: (_, index) {
            return Column(
              children: [
                ChatListTile(user: userList[index]),
                const Divider(
                  height: 1,
                  thickness: 1,
                  indent: 10,
                  endIndent: 10,
                )
              ],
            );
          },
        ),
      ),
    );
  }
}

class ChatListTile extends StatelessWidget {
  final Map<String, String> user;
  const ChatListTile({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        style: Theme.of(context).listTileTheme.style,
        focusColor: Colors.black12,
        onTap: () {
          GoRouter.of(context).push("/chat");
        },
        leading: const CircleAvatar(
          radius: 25,
          backgroundImage: NetworkImage(
              "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg"),
        ),
        title:
            Text(user["name"]!, style: Theme.of(context).textTheme.bodyLarge),
        subtitle: Text(
          user["message"]!,
        ));
  }
}
