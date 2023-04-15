import 'dart:async';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:projectnew/providers/dashboard_provider.dart';
import 'package:projectnew/views/dashboard/beranda_panel.dart';
import 'package:projectnew/views/dashboard/berita_panel.dart';
import 'package:projectnew/views/dashboard/pengaturan_panel.dart';
import 'package:provider/provider.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    final panels = [
      BerandaPanel(),
      BeritaPanel(),
      PengaturanPanel(),
    ];

    return Consumer<DashboardProvider>(
      builder: (context, prov, w) {
        return Scaffold(
          bottomNavigationBar: BottomNavigationBar(
              onTap: (value) {
                prov.ubahTab(value);
                print("tab $value");
              },
              currentIndex: prov.tabaktif,
              items: [
                BottomNavigationBarItem(
                    icon: Icon(FontAwesomeIcons.house), label: 'Beranda'),
                BottomNavigationBarItem(
                    icon: Icon(FontAwesomeIcons.newspaper), label: 'News'),
                BottomNavigationBarItem(
                    icon: Icon(FontAwesomeIcons.gear), label: 'Pengaturan'),
              ]),
          body: panels[prov.tabaktif]
          
          );
      }
    );
  }
}
