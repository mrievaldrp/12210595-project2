import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:projectnew/models/berita_model.dart';
import 'package:http/http.dart';

class DashboardProvider with ChangeNotifier {
  int tabaktif = 0;

  void ubahTab(int index) {
    tabaktif = index;
    notifyListeners();
  }
}

class BeritaPanelProvider with ChangeNotifier {
  bool modecari = false;

  void ubahmode() {
    modecari = !modecari;
    notifyListeners();
  }
}

class BeritaLoadDataProvider with ChangeNotifier {
  List<BeritaModel> data = [];
  
  get http => null;


  Future refresh() async {
    final alamat =
        'http://api.mediastack.com/v1/news?access_key = d0373cdbf75dea3ba6b90aba17a681d0';
    final hasil = await http.get(Uri.parse(alamat));
    if (hasil.statuscode != 200) return [];

    final obj = jsonDecode(hasil.body);

    data.clear();
    for (var n in obj['data']) {
      data.add(BeritaModel.fromMap(n));
    }
    notifyListeners();
  }
}
