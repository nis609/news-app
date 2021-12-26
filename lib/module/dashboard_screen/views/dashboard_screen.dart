
import 'package:flutter/material.dart';
import 'package:news_portal_app/components/appbar.dart';
import 'package:news_portal_app/res/app_color.dart';
import 'package:news_portal_app/res/size_config.dart';



int selectedIndex = 0;

class DashboardSkeleton extends StatefulWidget {
  final Widget children;
  final bool header;
  final bool footer;
  const DashboardSkeleton(
      {Key? key,
        required this.children,
        this.header = true,
        this.footer = true})
      : super(key: key);

  @override
  _DashboardSkeletonState createState() => _DashboardSkeletonState();
}

class _DashboardSkeletonState extends State<DashboardSkeleton> {
  void callHome() {
    setState(() {
      selectedIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    final height = SizeConfig.screenHeight ?? 400;
    final width = SizeConfig.screenWidth ?? 300;

    return Scaffold(
      bottomNavigationBar: widget.footer
          ? Container(
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10,
            ),
          ],
        ),
        child: BottomAppBar(
            elevation: 20,
            color: Colors.white,
            shape: const CircularNotchedRectangle(),
            notchMargin: width,
            child: Padding(
              padding: EdgeInsets.only(
                top: height,
                right: width * 5,
                left: width * 5,
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: width * 2.8),
                      child: InkWell(
                        onTap: callHome,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.home,
                              size: width * 8,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              height: height,
                            ),
                            if (selectedIndex == 0)
                              Container(
                                height: height * 0.6,
                                width: width * 8,
                                color: AppColor.mainCOLOR,
                              )
                            else
                              Container(
                                height: height * 0.6,
                                width: width * 8,
                                color: Colors.white,
                              ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: width * 8),
                      child: InkWell(
                        // onTap: callNotification,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.notifications_on,
                              size: width * 8,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              height: height,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: width * 8),
                      child: InkWell(
                        // onTap: callSettings,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.settings,
                              size: width * 8,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              height: height,
                            ),
                            if (selectedIndex == 2)
                              Container(
                                height: height * 0.6,
                                width: width * 8,
                                color: AppColor.mainCOLOR,
                              )
                            else
                              Container(
                                height: height * 0.6,
                                width: width * 8,
                                color: Colors.white,
                              )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: width * 2.8),
                      child: InkWell(
                        // onTap: () => context.router
                        //     .push(const ProfileScreenRoute()),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.person,
                              size: width * 8,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              height: height,
                            ),
                          ],
                        ),
                      ),
                    )
                  ]),
            )),
      )

      ///previous nav bar
      // Container(
      //         height: height * 8,
      //         child: BottomNav(
      //           width: width,
      //         ),
      //       )
          : null,
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          child: Column(
            children: [
              if (widget.header)
                CustomAppBar(width: width, height: height)
              else
                Container(),
              widget.children,
            ],
          ),
        ),
      ),
    );
  }
}



