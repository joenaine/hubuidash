part of dashboard;

class DashboardProvider extends ChangeNotifier {
  final scafoldKey = GlobalKey<ScaffoldState>();

  int selectedIndex = 0;
  int groupValue = 0;

  void onSelectedSliding(int index) {
    groupValue = index;
    notifyListeners();
  }

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
