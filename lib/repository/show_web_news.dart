import 'dart:io';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ShowWebNews extends StatefulWidget {

  final String url;

  const ShowWebNews({Key? key, required this.url}) : super(key: key);

  @override
  State<ShowWebNews> createState() => _ShowWebNewsState();
}

class _ShowWebNewsState extends State<ShowWebNews> {

  @override
  void initState() {
    // TODO: implement initState
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Google News"),
      ),
      body: WebView(
        initialUrl: widget.url,
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
