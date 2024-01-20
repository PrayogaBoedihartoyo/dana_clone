import 'package:flutter/cupertino.dart';

import '../pages/history_page.dart';
import '../pages/home_page.dart';
import '../pages/me_page.dart';
import '../pages/pocket_page.dart';

class ListOfPages {
  static List<Widget> pages = [
    const HomePage(),
    const HistoryPage(),
    const PocketPage(),
    const MePage(),
  ];
}