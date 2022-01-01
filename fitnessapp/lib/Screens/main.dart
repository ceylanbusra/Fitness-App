import 'package:fitnessapp/Screens/OyunScreen.dart';
import 'package:fitnessapp/Screens/Programlar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../model/programsoruEkleme.dart';
import 'package:lottie/lottie.dart';
//burada program başlıyor
//provider ile oluşturduğum programfunction ve soru functionu dinlemeye alıyor.

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (context) => ViewModel(),
      lazy: true,
    ),
  ], child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Provider.of<ViewModel>(context, listen: false).ProgramFunction();
    Provider.of<ViewModel>(context, listen: false).SoruFunction();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fitness App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeView(),
    );
  }
}

// ignore: must_be_immutable
class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);
  bool degisken = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Lottie.asset('assets/fitness.json'),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.transparent,
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ProgramlarScreen()));
                          },
                          child: Text("Tüm Programları Görmek için Tıkla")),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.transparent,
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => GamePage()));
                          },
                          child: Text("Oyuna başlamak için Tıkla")),
                    ],
                  )
                ],
              ))
            ],
          ),
        ),
      ),
    );

    // ignore: unused_element
  }
}
