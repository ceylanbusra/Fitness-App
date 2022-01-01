import 'package:fitnessapp/Widgets/ProgramWidget.dart';
import 'package:fitnessapp/model/programsoruEkleme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'main.dart';

class ResponsePage extends StatelessWidget {
  const ResponsePage({Key? key}) : super(key: key);
  //ProgramModelListte en sona kalan programı getiriyor ve burada gösteriyor
//ProgramModelListin içinde bir önceki sayfada silme işlemleri yapmıştık.
//O işlemlerden sonra ProgramModelListin içi sorulara göre silindi ve geriye tek bir program kaldı.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: ProgramWidget(
                programModel: context.read<ViewModel>().programModelList.first,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            ElevatedButton(
              onPressed: () {
                Provider.of<ViewModel>(context, listen: false)
                    .ProgramFunction();
                Provider.of<ViewModel>(context, listen: false).SoruFunction();
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeView(),
                  ),
                );
              },
              child: Text("Oyuna tekrar başlamak ister misiniz ?"),
            ),
          ],
        ),
      ),
    );
  }
}
