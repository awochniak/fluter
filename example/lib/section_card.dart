import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SectionCard extends StatelessWidget {

  final String title;
  final List<Widget> widgets;


  SectionCard({this.title, this.widgets});

  @override
  Widget build(BuildContext context) {
   return Container(
     child: Card(
       child: Padding(
         padding: const EdgeInsets.all(16.0),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: <Widget>[
             Text(title, style: Theme.of(context).textTheme.subhead.copyWith(fontWeight: FontWeight.w600)),
             Container(height: 8),
             Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: widgets)
           ],
         ),
       ),
     ),
   );
  }
}