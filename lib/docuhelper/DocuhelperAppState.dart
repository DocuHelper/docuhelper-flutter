import 'package:docuhelper_flutter/docuhelper/DocuhelperPage.dart';
import 'package:flutter/widgets.dart';

class DocuhelperAppState extends ChangeNotifier {
  DocuhelperPage currentPage = DocuhelperPage.HOME;

  void changePage(DocuhelperPage page) {
    currentPage = page;
    notifyListeners();
  }
}
