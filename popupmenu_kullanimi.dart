import 'package:flutter/material.dart';

class PopMenuKullanimi extends StatefulWidget {
  PopMenuKullanimi({Key? key}) : super(key: key);

  @override
  State<PopMenuKullanimi> createState() => _PopMenuKullanimiState();
}

class _PopMenuKullanimiState extends State<PopMenuKullanimi> {
  String _secilenSehir = 'Ankara';
  List<String> renkler = ['Mavi', 'Yeşil', 'Kırmızı', 'Sarı'];
  @override
  Widget build(BuildContext context) {
    return Center(
        child: PopupMenuButton<String>(
      onSelected: (String sehir) {
        print('Secilen sehir : $sehir');
        setState(() {
          _secilenSehir = sehir;
        });
      },
      //child: Text(_secilenSehir),
      itemBuilder: (BuildContext context) {
        /* return <PopupMenuEntry<String>>[
          PopupMenuItem(
            child: Text('Ankara'),
            value: 'Ankara',
          ),
          PopupMenuItem(
            child: Text('Bursa'),
            value: 'Bursa',
          ),
          PopupMenuItem(
            child: Text('Van'),
            value: 'Van',
          ),
        ];
       */
        return renkler
            .map(
              (String renk) => PopupMenuItem(
                child: Text(renk),
                value: renk,
              ),
            )
            .toList();
      },
    ));
  }
}
