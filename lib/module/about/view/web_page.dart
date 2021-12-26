import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:webview_flutter/platform_interface.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewPage extends StatefulWidget {
  final String url;


  const WebViewPage({Key? key, required this.url}) : super(key: key);

  @override
  _WebPageState createState() => _WebPageState();
}

class _WebPageState extends State<WebViewPage> {
  Completer<WebViewController> _controller = Completer<WebViewController>();

  late WebViewController _webViewController;

  String testUrl = "https://www.google.com/";

  _loadHTMLfromAsset() async {
    String file = await rootBundle.loadString("assets/epay_request.html");
    _webViewController.loadUrl(Uri.dataFromString(file,
        mimeType: 'text/html', encoding: Encoding.getByName('utf-8'))
        .toString());
  }




  @override
  void initState() {
    super.initState();

    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(


        body:WebView(
          initialUrl:  widget.url,
          javascriptMode: JavascriptMode.unrestricted,
          javascriptChannels: Set.from([
            JavascriptChannel(
              name: "message",
              onMessageReceived: (message) {},
            ),
          ]),
          onPageFinished: (data) {

          },
          onWebViewCreated: (webViewController) {
            _controller.complete(webViewController);
            _webViewController = webViewController;
            //  _loadHTMLfromAsset();
          },
        )


        ,
      ),
    );
  }
}