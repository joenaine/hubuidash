part of dashboard;

class DashboardProvider extends ChangeNotifier {
  final scafoldKey = GlobalKey<ScaffoldState>();

  int selectedIndex = 0;

  void onSelectedTaskMenu(int index) {
    selectedIndex = index;
    notifyListeners();
  }

  void openDrawer() {
    if (scafoldKey.currentState != null) {
      scafoldKey.currentState!.openDrawer();
    }
    notifyListeners();
  }
}
