import 'package:flutter/material.dart';


class BerandaPanel extends StatelessWidget {
  const BerandaPanel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/background.png',
          width: double.infinity,
          fit: BoxFit.cover,
          height: 300,
        ),
        InformasiPengguna(),
        Padding(
            padding: const EdgeInsets.only(top: 160),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              margin: EdgeInsets.zero,
              child: Container(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        LabelBerita(),
                        ListBerita(),
                        SizedBox(
                          height: 30,
                        ),
                        Wrap(
                          children: [
                            TombolMenu(
                              namaassets: 'assets/icon1.png',
                            ),
                            TombolMenu(
                              namaassets: 'assets/icon2.png',
                            ),
                            TombolMenu(
                              namaassets: 'assets/icon3.png',
                            ),
                            TombolMenu(
                              namaassets: 'assets/icon4.png',
                            )
                          ],
                        )
                      ],
                    ),
                  )),
            )),
      ],
    );
  }
}


class TombolMenu extends StatelessWidget {
  final String? namaassets;
  const TombolMenu({super.key, required this.namaassets});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 30,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        child: Container(
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.all(6),
          child: Image.asset(
            namaassets!,
            width: 40,
          ),
        ),
      ),
    );
  }
}

class ListBerita extends StatelessWidget {
  const ListBerita({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          ItemBerita(
            alamatAsset: 'assets/b1.png',
          ),
          ItemBerita(
            alamatAsset: 'assets/b2.png',
          ),
          ItemBerita(
            alamatAsset: 'assets/b3.png',
          ),
          ItemBerita(
            alamatAsset: 'assets/b4.png',
          )
        ],
      ),
    );
  }
}

class ItemBerita extends StatelessWidget {
  final String? alamatAsset;
  const ItemBerita({super.key, this.alamatAsset = ''});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(13),
      child: Image.asset(
        alamatAsset!,
        height: 100,
        width: 350,
        fit: BoxFit.cover,
      ),
    );
  }
}

class LabelBerita extends StatelessWidget {
  const LabelBerita({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'Berita',
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
    );
  }
}

class InformasiPengguna extends StatelessWidget {
  const InformasiPengguna({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 70, 20, 0),
      child: Row(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(500),
              child: Image.asset(
                'assets/foto.png',
                width: 80,
                fit: BoxFit.cover,
              )),
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'hi, Muhammad Rievaldi Rievaldi Rendyansyah Putra',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Text(
                  'mrievaldrp6@gmail.com',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          Image.asset(
            'assets/notif.png',
            width: 30,
            fit: BoxFit.cover,
          )
        ],
      ),
    );
  }
}
