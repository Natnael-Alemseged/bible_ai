import 'package:stacked/stacked.dart';

class BibleVersionProfileViewModel extends BaseViewModel {
  String _selectedVersion = 'KJV'; // Default to KJV as per screenshot

  String get selectedVersion => _selectedVersion;

  void setSelectedVersion(String value) {
    _selectedVersion = value;
    notifyListeners();
  }

  void updateVersion() {
    // Simulate updating the Bible version
    print('Updating Bible version to: $_selectedVersion');
    // Add your API call or logic here
    notifyListeners();
  }
}