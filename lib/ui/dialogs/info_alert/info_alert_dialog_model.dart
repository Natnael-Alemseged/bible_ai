import 'package:stacked/stacked.dart';

class InfoAlertDialogModel extends BaseViewModel {
  String selectedPlan = 'yearly';

  void setSelectedPlan(String plan) {
    selectedPlan = plan;
    notifyListeners();
  }
}
