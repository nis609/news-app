import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:news_portal_app/res/size_config.dart';

class NetworkImageHelperforCard extends StatelessWidget {
  final String? imagelink;
  final String? placeholder;

  const NetworkImageHelperforCard({Key? key, this.imagelink, this.placeholder})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    Widget imgCtr = Container();

    if (imagelink == "" ||
        imagelink == "https://d3vv3e6l76osew.cloudfront.net/") {
      imgCtr = Image.asset(
          placeholder ?? "applogo.png",
          fit: BoxFit.fill
      );
    } else {
      if (imagelink!.contains(".svg")) {
        imgCtr = SvgPicture.network(
          imagelink!,
          placeholderBuilder: (BuildContext context) =>  ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              "assets/applogo.png",
              errorBuilder: (context, obj, stack) {
                return Image.asset(
                  "assets/applogo.png",

                );
              },

            ),
          ),
        );
      } else {
        imgCtr = Padding(
          padding: const EdgeInsets.all(4.0),
          child: ClipRRect(

            borderRadius: BorderRadius.circular(10),
            child: FadeInImage.assetNetwork(

                fit: BoxFit.fitHeight,
                width:  SizeConfig.screenWidth,


              placeholder: 'assets/applogo.png',
              imageErrorBuilder: (context, obj, stack) {
                return Image.asset(
                  "assets/applogo.png",
                  fit: BoxFit.fill,


                );
              },
              image: imagelink!



            ),
          ),
        );
      }
    }
    return imgCtr;
  }
}
class NetworkImageHelperforCardWithoutRadius extends StatelessWidget {
  final String? imagelink;
  final String? placeholder;

  const NetworkImageHelperforCardWithoutRadius({Key? key, this.imagelink, this.placeholder})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    Widget imgCtr = Container();

    if (imagelink == "" ||
        imagelink == "https://d3vv3e6l76osew.cloudfront.net/") {
      imgCtr = Image.asset(
          placeholder ?? "applogo.png",
          fit: BoxFit.fill
      );
    } else {
      if (imagelink!.contains(".svg")) {
        imgCtr = SvgPicture.network(
          imagelink!,
          placeholderBuilder: (BuildContext context) =>  ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              "assets/applogo.png",
              errorBuilder: (context, obj, stack) {
                return Image.asset(
                  "assets/applogo.png",

                );
              },

            ),
          ),
        );
      } else {
        imgCtr = ClipRRect(
          borderRadius: BorderRadius.circular(0),
          child: FadeInImage.assetNetwork(




              placeholder: 'assets/applogo.png',
              imageErrorBuilder: (context, obj, stack) {
                return Image.asset(
                  "assets/applogo.png",

                );
              },
              image: imagelink!



          ),
        );
      }
    }
    return imgCtr;
  }
}
class NetworkImageHelperforCardWithoutRadiust extends StatelessWidget {
  final String? imagelink;
  final String? placeholder;

  const NetworkImageHelperforCardWithoutRadiust({Key? key, this.imagelink, this.placeholder})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    Widget imgCtr = Container();

    if (imagelink == "" ||
        imagelink == "https://d3vv3e6l76osew.cloudfront.net/") {
      imgCtr = Image.asset(
          placeholder ?? "applogo.png",
          fit: BoxFit.fitWidth
      );
    } else {
      if (imagelink!.contains(".svg")) {
        imgCtr = SvgPicture.network(
          imagelink!,
          placeholderBuilder: (BuildContext context) =>  ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              "assets/applogo.png",
              errorBuilder: (context, obj, stack) {
                return Image.asset(
                  "assets/applogo.png",

                );
              },

            ),
          ),
        );
      } else {
        imgCtr = Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(0),

            child: FadeInImage.assetNetwork(
              height: SizeConfig.screenWidth,
                width: SizeConfig.screenWidth,




                placeholder: 'assets/applogo.png',
                imageErrorBuilder: (context, obj, stack) {
                  return Image.asset(
                    "assets/applogo.png",
                      fit: BoxFit.fitWidth

                  );
                },
                image: imagelink!,
                fit: BoxFit.fill




            ),
          ),
        );
      }
    }
    return imgCtr;
  }
}
class NetworkImageHelperforCircleImage extends StatelessWidget {
  final String? imagelink;
  final String? placeholder;

  const NetworkImageHelperforCircleImage({Key? key, this.imagelink, this.placeholder})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    Widget imgCtr = Container();

    if (imagelink == "" ||
        imagelink == "https://d3vv3e6l76osew.cloudfront.net/") {
      imgCtr = Image.asset(
          placeholder ?? "assets/applogo.png",
          fit: BoxFit.fill
      );
    } else {
      if (imagelink!.contains(".svg")) {
        imgCtr = SvgPicture.network(
          imagelink!,
          placeholderBuilder: (BuildContext context) =>  ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              "assets/applogo.png",
              errorBuilder: (context, obj, stack) {
                return Image.asset(
                  "assets/applogo.png",
                  fit: BoxFit.fill,

                );
              },

            ),
          ),
        );
      } else {
        imgCtr = Padding(
          padding: const EdgeInsets.all(1.0),
          child: ClipRRect(

            borderRadius: BorderRadius.circular(100),
            child: FadeInImage.assetNetwork(




                placeholder: 'assets/applogo.png',
                imageErrorBuilder: (context, obj, stack) {
                  return Image.asset(
                    "assets/applogo.png",

                  );
                },
                image: imagelink!,
                fit: BoxFit.cover,



            ),
          ),
        );
      }
    }
    return imgCtr;
  }
}

class NetworkImageHelperfor extends StatelessWidget {
  final String? imagelink;
  final String? placeholder;

  const NetworkImageHelperfor({Key? key, this.imagelink, this.placeholder})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    Widget imgCtr = Container();

    if (imagelink == "" ||
        imagelink == "https://d3vv3e6l76osew.cloudfront.net/") {
      imgCtr = Image.asset(
          placeholder ?? "assets/applogo.png",
          fit: BoxFit.fill
      );
    } else {
      if (imagelink!.contains(".svg")) {
        imgCtr = SvgPicture.network(
          imagelink!,
          placeholderBuilder: (BuildContext context) =>  ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              "assets/applogo.png",
              errorBuilder: (context, obj, stack) {
                return Image.asset(
                  "assets/applogo.png",
                  fit: BoxFit.fitHeight,

                );
              },

            ),
          ),
        );
      } else {
        imgCtr = Padding(
          padding: const EdgeInsets.all(2.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: FadeInImage.assetNetwork(




                placeholder: 'assets/applogo.png',
                imageErrorBuilder: (context, obj, stack) {
                  return Image.asset(
                    "assets/applogo.png",

                  );
                },
                image: imagelink!



            ),
          ),
        );
      }
    }
    return imgCtr;
  }
}