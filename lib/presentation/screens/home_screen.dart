import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:screens_ui/domain/models/menu_items.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Flutter God')),
        body: ListView.builder(
          itemCount: appMenuItems.length,
          itemBuilder: (BuildContext context, int index) {
            final menuItem = appMenuItems[index];
            return _CustomListTile(menuItem: menuItem);
          },
        ));
  }
}

class _CustomListTile extends StatelessWidget {
  const _CustomListTile({
    required this.menuItem,
  });

  final MenuItem menuItem;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return ListTile(
      leading: Icon(
        menuItem.icon,
        color: colors.primary,
      ),
      trailing: const Icon(Icons.arrow_forward_ios),
      title: Text(menuItem.title),
      subtitle: Text(menuItem.subTitle),
      onTap: () {
        // context.pushNamed(CardsScreen.name);
        context.push(menuItem.link);
      },
    );
  }
}
