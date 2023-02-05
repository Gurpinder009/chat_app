import "package:flutter/material.dart";
import "dart:developer";
import "package:google_fonts/google_fonts.dart";

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: SafeArea(
            child: ListView(
      children: [
        // DrawerHeader(child:Text("working")),

        Row(children: [
          Padding(
              padding: const EdgeInsets.all(16),
              child: Text("Chat App",
                  style: GoogleFonts.ubuntu(
                    textStyle: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey[700]),
                  )))
        ]),
        const Divider(
          thickness: 2,
          height: 0,
        ),

        ListTile(
          style: Theme.of(context).listTileTheme.style,
          onTap: () {
            log("this is working");
          },
          minVerticalPadding: 0,
          title: Text("Setting", style: Theme.of(context).textTheme.bodyLarge),
        ),

        ListTile(
          style: Theme.of(context).listTileTheme.style,
          onTap: () {
            log("this is working");
          },
          minVerticalPadding: 0,
          title: Text("Setting", style: Theme.of(context).textTheme.bodyLarge),
        ),

        ListTile(
          style: Theme.of(context).listTileTheme.style,
          onTap: () {
            log("this is working");
          },
          title: Text("Setting", style: Theme.of(context).textTheme.bodyLarge),
        ),
      ],
    )));
  }
}
