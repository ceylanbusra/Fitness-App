import 'package:fitnessapp/model/Program.dart';
import 'package:flutter/material.dart';
//Burada program model nesnesinin içindeki verileri nerelerde kullanacağımızı falan tanımladık.
//burası tamamen widget sayfası.

// ignore: must_be_immutable
class ProgramWidget extends StatefulWidget {
  final ProgramModel programModel;

  ProgramWidget({
    Key? key,
    required this.programModel,
  }) : super(key: key);

  @override
  State<ProgramWidget> createState() => _ProgramWidgetState();
}

class _ProgramWidgetState extends State<ProgramWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      height: 250,
      child: Card(
        color: Colors.blue[300],
        elevation: 6,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(widget.programModel.name,
                style: Theme.of(context).textTheme.headline5),
            Container(
              height: 100,
              padding: EdgeInsets.all(8),
              child: ListView.builder(
                itemCount: widget.programModel.hareketler.length,
                itemBuilder: (context, index) => Container(
                  padding: EdgeInsets.all(4),
                  child: Row(
                    children: [
                      Text(
                        widget.programModel.hareketler[index],
                        style: Theme.of(context)
                            .textTheme
                            .subtitle2!
                            .copyWith(color: Colors.white, fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
