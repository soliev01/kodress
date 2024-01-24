import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:kodress/kodress.dart';
import 'package:webview_flutter/webview_flutter.dart';

/// {@template kodress}
/// Korean street address search.
/// {@endtemplate}
class Kodress extends StatefulWidget {
  /// {@macro kodress}
  const Kodress({super.key});

  @override
  State<Kodress> createState() => _KodressState();
}

class _KodressState extends State<Kodress> {
  late WebViewController controller;

  @override
  void initState() {
    controller = WebViewController()
      ..enableZoom(false)
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0xFFFFFFFF))
      ..addJavaScriptChannel(
        'OnSelected',
        onMessageReceived: (JavaScriptMessage message) {
          Navigator.pop(
            context,
            AddressData.fromJson(
              jsonDecode(message.message) as Map<String, dynamic>,
            ),
          );
        },
      )
      ..loadRequest(Uri.parse('https://soliev01.github.io/kodress-web'));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFFFFFFFF),
      ),
      body: WebViewWidget(controller: controller),
    );
  }
}
