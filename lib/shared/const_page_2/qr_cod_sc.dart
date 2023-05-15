import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class ScannerCODE extends StatefulWidget {
  const ScannerCODE({Key? key, required this.idController}) : super(key: key);
  final TextEditingController idController;
  @override
  State<ScannerCODE> createState() => _ScannerCODEState();
}

class _ScannerCODEState extends State<ScannerCODE> {
  final GlobalKey _gLobalkey = GlobalKey();
  QRViewController? controller;
  Barcode? result;
  void qr(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((event) {
      setState(() {
        result = event;
        widget.idController.text = '${result!.code}';
      });
      if (result != null && widget.idController.text == result!.code) {
        Navigator.maybePop(context);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return QRView(
      key: _gLobalkey,
      onQRViewCreated: qr,
      overlay: QrScannerOverlayShape(
        borderColor: Colors.red,
        borderRadius: 10,
        borderLength: 30,
        borderWidth: 10,
        cutOutBottomOffset: 0,
        cutOutHeight: size.height / 5,
        cutOutWidth: size.width * 0.80
      ),
    );
  }
}
