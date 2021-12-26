import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:progress_indicators/progress_indicators.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          InkWell(
              onTap: () async{
                await  showGeneralDialog(
                  context:context,
                  barrierDismissible:true ,

               // transitionBuilder: ( context,animation,secondaryAnimation,child){
               //      return  SlideTransition(
               //        child: new Container(
               //          decoration: new BoxDecoration(
               //              boxShadow: [
               //                new BoxShadow(
               //                  color: Colors.transparent,
               //                  blurRadius: 25.0,
               //                )
               //              ]
               //          ),
               //          child: child,
               //        ),
               //        position: new Tween(
               //          begin: const Offset(1.0, 0.0),
               //          end: const Offset(0.0, 0.0),
               //        )
               //            .animate(
               //            new CurvedAnimation(
               //              parent: animation,
               //              curve: Curves.elasticIn  ,
               //
               //
               //            )
               //        ),
               //      );
               //  },
               transitionDuration: Duration(milliseconds: 100),
               barrierColor: Colors.transparent,



               barrierLabel: MaterialLocalizations.of(context).expandedIconTapHint,
               pageBuilder:(context,_,__){
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Divider(height: 80,),
                        Container(
                          margin: EdgeInsets.all(20),
                          height:100,
                          width:500,
                                color:Colors.red
                        )
                      ],
                    );
               }

                );
              },

              child: Icon(Icons.ac_unit))
        ],
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Center(child: JumpingText('NotAvailable...')),
         ],
        ),
      ),
    );
  }
}
