import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:url_launcher/url_launcher.dart';


class HtmlView extends StatelessWidget {
  final String? title;
  final String? html;

  const HtmlView({Key? key, this.html, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: SingleChildScrollView(
       // /   physics: NeverScrollableScrollPhysics(),
            child: htmlExpandablePanel(html: html!, title: title!)),
      ),
    );
  }

  //
  // AppBar buildAppBar(BuildContext context) {
  //   // return AppBar(
  //   //   centerTitle: true,
  //   //   toolbarHeight: 50,
  //   //   leading: Builder(
  //   //     builder: (context) => IconButton(
  //   //       icon: Icon(Icons.arrow_back, color: MyTheme.dark_grey),
  //   //       onPressed: () => Navigator.of(context).pop(),
  //   //     ),
  //   //   ),
  //   //   title: Text(
  //   //     "${title}",
  //   //     style: TextStyle(fontSize: 16, color: MyTheme.accent_color),
  //   //   ),
  //   //   elevation: 1.5,
  //   //   titleSpacing: 0,
  //   // );
  // }
}

Widget htmlExpandablePanel({String? html, String? title}) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(
      8.0,
      0.0,
      8.0,
      8.0,
    ),
    child: html != null
        ? Html(
      data: html,
      tagsList: Html.tags..addAll(["bird", "flutter"]),
      style: {
        "table": Style(
          backgroundColor: Color.fromARGB(0x50, 0xee, 0xee, 0xee),
        ),
        "tr": Style(
          border: Border(bottom: BorderSide(color: Colors.grey)),
        ),
        "th": Style(
          padding: EdgeInsets.all(6),
          backgroundColor: Colors.grey,
          maxLines: 3
        ),
        "td": Style(
    maxLines: 3,
          color: Colors.yellow,
          padding: EdgeInsets.all(6),
          alignment: Alignment.topLeft,
        ),
        'h5': Style(maxLines: 2, textOverflow: TextOverflow.ellipsis,color: Colors.red),
      },
      customRender: {
        "table": (context, child) {
          return SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child:
            (context.tree as TableLayoutElement).toWidget(context),
          );
        },
        "bird": (RenderContext context, Widget child) {
          return TextSpan(text: "🐦");
        },
        "flutter": (RenderContext context, Widget child) {
          return FlutterLogo(
            style: (context.tree.element!.attributes['horizontal'] != null)
                ? FlutterLogoStyle.horizontal
                : FlutterLogoStyle.markOnly,
            textColor: context.style.color!,
            size: context.style.fontSize!.size! * 5,
          );
        },
      },
      shrinkWrap: true,
      customImageRenders: {
        networkSourceMatcher(domains: ["flutter.dev"]):
            (context, attributes, element) {
          return FlutterLogo(size: 36);
        },
        networkSourceMatcher(domains: ["mydomain.com"]):
        networkImageRender(
          headers: {"Custom-Header": "some-value"},
          altWidget: (alt) => Text(alt ?? ""),
          loadingWidget: () => Text("Loading..."),
        ),
        // On relative paths starting with /wiki, prefix with a base url
            (attr, _) =>
        attr["src"] != null && attr["src"]!.startsWith("/wiki"):
        networkImageRender(
            mapUrl: (url) => "https://upload.wikimedia.org" + url!),
        // Custom placeholder image for broken links
        networkSourceMatcher():
        networkImageRender(altWidget: (_) => FlutterLogo()),
      },
    )
        : Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
      child: Container()
    ),
  );
}
