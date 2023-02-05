import 'dart:developer';
import 'package:clone_chat_app/Presentation/layout_widget.dart';
import "package:flutter/material.dart";

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});
  @override
  Widget build(BuildContext context) {
    return LayoutWidget(
      child: SizedBox(
          height: double.maxFinite,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                decoration: BoxDecoration(color: Colors.green[100]),
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 75),
                height: double.maxFinite,
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  reverse: true,
                  children: const [MessageTileWidget()],
                ),
              ),
              const NewMessageFormWidget()
            ],
          )),
    );
  }
}

class NewMessageFormWidget extends StatelessWidget {
  final variable1 = true;

  const NewMessageFormWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.
      // color: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
              child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 1),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(25))),
            child: TextFormField(
              style: Theme.of(context).textTheme.bodyLarge,
              // : OutlineInputBorder(),
              decoration: const InputDecoration(
                border: InputBorder.none,
              ),
            ),
          )),
          const Padding(padding: EdgeInsets.only(right: 10)),
          (variable1)
              ? Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(25))),
                  child: IconButton(
                      onPressed: () {
                        log("wprlomg");
                      },
                      icon: const Icon(Icons.mic, color: Colors.green)),
                )
              : Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(25))),
                  child: IconButton(
                      onPressed: () {
                        log("wprlomg");
                      },
                      icon: const Icon(Icons.send, color: Colors.green)))
        ],
      ),
    );
  }
}

class MessageTileWidget extends StatelessWidget {
  const MessageTileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            margin: const EdgeInsets.only(top: 10),
            padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 15),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(5))),
            constraints: const BoxConstraints(maxWidth: 270),
            child: const Text(
              "workgin asdjf;aklsdfld asjdfkasjdlf adsjfalskd asdjflk;asdjf aksdjfasl dfjlkasddjflas d",
            )),
      ],
    );
  }
}
