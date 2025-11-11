import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:notes_app/ui/notes_list_page.dart';

class WindowsAppBar extends StatelessWidget implements PreferredSizeWidget {
  const WindowsAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      systemOverlayStyle: SystemUiOverlayStyle.light,
      title: const Text('笔记应用'),
      actions: [
        IconButton(
          icon: const Icon(Icons.minimize),
          onPressed: () {
            // 最小化窗口（需要额外插件）
          },
        ),
        IconButton(
          icon: const Icon(Icons.close),
          onPressed: () {
            SystemNavigator.pop();
          },
        ),
      ],
    );
  }
}