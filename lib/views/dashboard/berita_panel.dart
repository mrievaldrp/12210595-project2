import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:projectnew/providers/dashboard_provider.dart';
import 'package:provider/provider.dart';

class BeritaPanel extends StatelessWidget {
  const BeritaPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Berita Terkini'),
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () {
                context.read<BeritaPanelProvider>().ubahmode();
              },
              icon: Icon(FontAwesomeIcons.magnifyingGlass))
        ],
      ),
      body: Text('Berita'),
    );
  }
}
