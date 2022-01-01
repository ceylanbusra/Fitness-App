import 'package:fitnessapp/Widgets/ProgramWidget.dart';
import 'package:fitnessapp/model/programsoruEkleme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
//Provider içindeki listenin önce ilk değerini alıyor dinliyor ardından indexe göre tüm listelemeyi yapıyor.
//ListViewBuilder içinde hepsi

class ProgramlarScreen extends StatefulWidget {
  ProgramlarScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<ProgramlarScreen> createState() => _ProgramlarScreenState();
}

class _ProgramlarScreenState extends State<ProgramlarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
          itemCount: Provider.of<ViewModel>(context).programModelList.length,
          itemBuilder: (context, index) => ProgramWidget(
            programModel:
                Provider.of<ViewModel>(context).programModelList[index],
            //programModel: Provider.of<ViewModel>(context).programModelList[index],
          ),
        ),
      ),
    );
  }
}
