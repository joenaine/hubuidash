part of dashboard;

class DashboardProvider extends ChangeNotifier {
  final scafoldKey = GlobalKey<ScaffoldState>();

  void onSelectedTaskMenu(int index, String label) {}

  void openDrawer() {
    if (scafoldKey.currentState != null) {
      scafoldKey.currentState!.openDrawer();
    }
    notifyListeners();
  }
}
