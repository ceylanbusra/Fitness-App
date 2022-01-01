import 'package:fitnessapp/model/Program.dart';
import 'package:fitnessapp/model/Soru.dart';
import 'package:fitnessapp/model/programsoruEkleme.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'OyunScreen.dart';

class QuestionPage extends StatefulWidget {
  final SoruModel soruModel;

  const QuestionPage({
    Key? key,
    required this.soruModel,
  }) : super(key: key);

  @override
  _QuestionPageState createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.grey[200],
          padding: EdgeInsets.all(12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Lottie.asset('assets/grandma-grandpa.json'),
              Container(
                decoration: BoxDecoration(
                    color: Colors.indigo[300],
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                child: Column(
                  children: [
                    Text(
                      widget.soruModel.soru,
                      style: Theme.of(context).textTheme.headline5,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.blue,
                            ),
                            onPressed: () {
                              print(context
                                  .read<ViewModel>()
                                  .programModelList
                                  .length);
                              Provider.of<ViewModel>(context, listen: false)
                                  .programModelList
                                  .removeWhere(widget.soruModel.yesFunction);
                              Provider.of<ViewModel>(context, listen: false)
                                  .soruModelList
                                  .removeWhere(
                                      (e) => e.soru == widget.soruModel.soru);

                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => GamePage(),
                                ),
                              );
                            },
                            child: Text("Evet")),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                          ),
                          onPressed: () {
                            print(context
                                .read<ViewModel>()
                                .programModelList
                                .length);
                            Provider.of<ViewModel>(context, listen: false)
                                .programModelList
                                .removeWhere(widget.soruModel.noFunction);
                            Provider.of<ViewModel>(context, listen: false)
                                .soruModelList
                                .removeWhere(
                                    (e) => e.soru == widget.soruModel.soru);

                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => GamePage(),
                              ),
                            );
                          },
                          child: Text(
                            "Hayır",
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  soruKodu(bool degisken) {
    //Kalan durum 35

    //Cinsiyetiniz kadın mı ?
    if (degisken) {
      //Kalan durum 22
      //Hamile misiniz ?
      if (degisken) {
        //Kalan durum 2
        //Haftada 3 gün mü spor yapmak istersiniz ?
        if (degisken) {
          //kalan 1
          //program: Hamilelere özel haftada 3 günlük spor

        } else {
          //kalan1
          //program:hamilelere özel hergün yapılacak program
        }
      } else {
        //kalan durum 20
        //Kilo mu vermek istersiniz ?
        if (degisken) {
          //kalan durum 8
          //belinde sakatlık var mı?
          if (degisken) {
            //kalan durum 7
            //bacağında sakatlık var mı ?
            if (degisken) {
              //kalan 6
              //skolyozun var mı
              if (degisken) {
                //kalan 4
                //yüzme biliyor musun
                {
                  if (degisken) {
                    //kalan 2
                    //haftada 3 gün spor yapmak ister misin?
                    if (degisken) {
                      //kalan 1
                      //kilo vermek isteyen kolunda bacağında sakatlık olan
                      //skolyozu olan yüzme bilen haftada 3 günlük program
                    }
                  } else {
                    //kalan 2
                    //haftada 3 gün spor yapmak ister misiniz ?
                    if (degisken) {
                      //kalan 1
                      //program: yüzme bilmeyen haftada 3
                    } else {
                      //kalan 1
                      //program: yüzme bilmeyen her gün
                    }
                  }
                }
              } else {
                //kalan 2
                //skolyozu olmayan haftada 3 gün spor yapmak ister misin ?
                if (degisken) {
                  //kalan 1
                  //program Skolyozu olmayan bacağı kolu rahatsız olan haftada 3 program
                } else {
                  //kalan 1
                  //skolyozu olan her gün spor
                }
              }
            } else {
              //kalan 1
              //program: belinde sakatlık olan bacağında olmayan
            }
          } else {
            //kalan durum 1
            //belinde bacağında sakatlık olmayan
          }
        } else {
          //kalan durum 13
          //Vücut geliştirmek isteyen kadınlara özel programlar
          //Sporcu musunuz
          if (degisken) {
            //kalan 6
            //Ekipmanınız var mı ?
            if (degisken) {
              //kalan3
              //Yuzme biliyor musunuz?
              if (degisken) {
                //kalan2
                //sigara içiyor musunuz
                if (degisken) {
                  //kalan1
                  //program
                } else {
                  //kalan1
                  //program
                }
              } else {
                //kalan1
                //program
              }
            } else {
              //kalan3
              //sigara içiyor musunuz
              if (degisken) {
                //kalan2
                //haftada3 kez spor yapar mısınız
                if (degisken) {
                  //kalan1
                  //her güne spor isteyen 3 gün yapmayan
                } else {
                  //kalan1
                  //her güne spor isteyen
                }
              } else {
                //kalan1
                //sigara içilmeyen program
              }
            }
          } else {
            //sporcu olmayan
            //kalan 7
            //Ekipman var mı
            if (degisken) {
              //kalan3
              //Yüzme biliyor musun
              if (degisken) {
                //kalan1
                //yüzme bilen ekipmanı olmayan gariban insan
              } else {
                //kalan2
                //covid geçirdiniz mi
                if (degisken) {
                  //kalan1
                  //covid geçiren kişi
                } else {
                  //kalan1
                  //covid geçirmemiş kişi
                }
              }
            } else {
              //kalan4
              //ekipmanı olmayanlar derneği
              //Tüm vucut mu çalıştırmak istersiniz?
              if (degisken) {
                //kalan2
                //haftada 3 gün mü istersiniz
                if (degisken) {
                  //kalan1
                } else {
                  //kalan1
                }
              } else {
                //kalan2
                //haftada 2 gün mü istersiniz
                if (degisken) {
                  //kalan1
                } else {
                  //kalan1
                }
              }
            }
          }
        }
      }
    } else {
      print("şuanda cinsiyeti erkek olan elsenin içi");
      //kalan durum 13
      //kilo vermek için mi yoksa vücut geliştirmek için mi ?
      if (degisken) {
        //kalan4
        //belinde sakatlık var mı ?
        if (degisken) {
          //kalan4
          //bacağında sakatlık var mı
          if (degisken) {
            //kalan 2
            //haftada 3 kez spor yapmak ister misiniz?
            if (degisken) {
              //kalan1
              //program ...
            } else {
              //kalan1
              //her gün spor yapmak
            }
          } else {
            //kalan2
            //haftada 3 gün spor yapmak ister misiniz
            if (degisken) {
              //kalan1
            } else {
              //kalan 1
              //hergün spor yapmak isteyenlere yönelik prog.
            }
          }
        } else {
          // belinde sakatlığı olmayan kimse yokmuş demek ki
        }
      } else {
        print("şuanda vücut geliştirmek için else");
        //kalan 9
        //vücut geliştirenler
        //belinde sakatlık var mı?
        if (degisken) {
          //kalan5
          //skolyozun var mı?
          if (degisken) {
            //kalan3
            //pilates yapmak ister mi?
            if (degisken) {
              //kalan2
              //haftada 3gün spor yapmak ister mi ?
              if (degisken) {
                //kalan 1
                //program
              } else {
                //kalan1
                //her gün program
              }
            } else {
              //kalan1
              //skolyozu olan belinde rahatsızlığı olan pilates istemeyenler
            }
          } else {
            //kalan2
            //skolyozu olmayan
            //bacağınızda sakatlık var mı ?
            if (degisken) {
              //kalan1
              //program
            } else {
              //kalan1
              //program
            }
          }
        } else {
          print("şuanda belinde sakatlığı olmayan elsenin içi");
          //skolyozu olmayan belinde sakatlık olmayan
          //kalan4
          //sporcu musunuz?
          if (degisken) {
            //kalan2
            //haftada3 gün spor yapmak ister misiniz?
            if (degisken) {
              print("şuanda sporcu olan ve haftada 3 gün spor yapan ifin içi");
              //kalan1
              //program
            } else {
              //kalan1
              //program
            }
          } else {
            //sporcu olmayan 2 kişi
            //kalan2
            //haftada 3 gün spor yapmak ister misiniz?
            if (degisken) {
              //kalan1
              //program
            } else {
              //kalan1
              //belinde bacağında sorun olamayan sporcu olamayan vücut geliştirmek isteyen erkek
            }
          }
        }
      }
    }

    if (degisken) {
    } else {}
  }
}
