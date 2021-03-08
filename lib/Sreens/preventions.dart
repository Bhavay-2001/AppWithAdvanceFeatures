import 'dart:async';

import 'package:flutter/material.dart';
//import 'package:webview_flutter/webview_flutter.dart';
import 'dart:io';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class Prevention extends StatefulWidget {
  @override
  _PreventionState createState() => _PreventionState();
}

class _PreventionState extends State<Prevention> {
  //final Completer<WebViewController> _controller = Completer<WebViewController>();

  @override
  void initState() {
    super.initState();
    // if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          'Preventions',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Builder(builder: (BuildContext context) {
        return WebviewScaffold(
          url: 'https://www.ncdc.gov.in/index1.php?lang=1&level=1&sublinkid=703&lid=550',
          withZoom: true,
          hidden: true,
          //javascriptMode: JavascriptMode.unrestricted,
          // onWebViewCreated: (WebViewController webViewController) {
          //   _controller.complete(webViewController);
          // },
        );
      }
      ),);
  }
}
