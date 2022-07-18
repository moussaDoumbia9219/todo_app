import 'package:flutter/material.dart';
import 'package:todo_app/presentation/pages/tabs_screen.dart';
import '../../presentation/pages/recycle_bin_screen.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case RecycleBin.id:
        return MaterialPageRoute(builder: (_) => const RecycleBin());
      case TabsScreen.id:
        return MaterialPageRoute(builder: (_) => TabsScreen());
      default:
        return null;
    }
  }
}
