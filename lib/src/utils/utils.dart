import 'package:flutter/cupertino.dart';
import 'package:url_launcher/url_launcher.dart';

abrirScan(_launchURL) async {
  if (scan.tipo == 'http') {
    if (await canLaunch(scan.valor)) {
      await launch(scan.valor);
    } else {
      throw 'Could not launch ${scan.valor}';
    }
  } else {
    Navigator.pushNamed(context, 'mapa', arguments: scan);
  }
}
