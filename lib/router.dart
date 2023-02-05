import 'package:clone_chat_app/Presentation/Pages/chat_page.dart';
import 'package:clone_chat_app/Presentation/Pages/home_page.dart';
import 'package:go_router/go_router.dart';

var router = GoRouter(routes: [
  GoRoute(
    path: "/",
    builder: (context, state) => const HomePage(),
  ),
  GoRoute(
    path: "/chat",
    builder: (context, state) => const ChatPage(),
  )
]);
