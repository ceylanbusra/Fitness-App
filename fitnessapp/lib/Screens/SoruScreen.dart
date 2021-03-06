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
                            "Hay??r",
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

    //Cinsiyetiniz kad??n m?? ?
    if (degisken) {
      //Kalan durum 22
      //Hamile misiniz ?
      if (degisken) {
        //Kalan durum 2
        //Haftada 3 g??n m?? spor yapmak istersiniz ?
        if (degisken) {
          //kalan 1
          //program: Hamilelere ??zel haftada 3 g??nl??k spor

        } else {
          //kalan1
          //program:hamilelere ??zel herg??n yap??lacak program
        }
      } else {
        //kalan durum 20
        //Kilo mu vermek istersiniz ?
        if (degisken) {
          //kalan durum 8
          //belinde sakatl??k var m???
          if (degisken) {
            //kalan durum 7
            //baca????nda sakatl??k var m?? ?
            if (degisken) {
              //kalan 6
              //skolyozun var m??
              if (degisken) {
                //kalan 4
                //y??zme biliyor musun
                {
                  if (degisken) {
                    //kalan 2
                    //haftada 3 g??n spor yapmak ister misin?
                    if (degisken) {
                      //kalan 1
                      //kilo vermek isteyen kolunda baca????nda sakatl??k olan
                      //skolyozu olan y??zme bilen haftada 3 g??nl??k program
                    }
                  } else {
                    //kalan 2
                    //haftada 3 g??n spor yapmak ister misiniz ?
                    if (degisken) {
                      //kalan 1
                      //program: y??zme bilmeyen haftada 3
                    } else {
                      //kalan 1
                      //program: y??zme bilmeyen her g??n
                    }
                  }
                }
              } else {
                //kalan 2
                //skolyozu olmayan haftada 3 g??n spor yapmak ister misin ?
                if (degisken) {
                  //kalan 1
                  //program Skolyozu olmayan baca???? kolu rahats??z olan haftada 3 program
                } else {
                  //kalan 1
                  //skolyozu olan her g??n spor
                }
              }
            } else {
              //kalan 1
              //program: belinde sakatl??k olan baca????nda olmayan
            }
          } else {
            //kalan durum 1
            //belinde baca????nda sakatl??k olmayan
          }
        } else {
          //kalan durum 13
          //V??cut geli??tirmek isteyen kad??nlara ??zel programlar
          //Sporcu musunuz
          if (degisken) {
            //kalan 6
            //Ekipman??n??z var m?? ?
            if (degisken) {
              //kalan3
              //Yuzme biliyor musunuz?
              if (degisken) {
                //kalan2
                //sigara i??iyor musunuz
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
              //sigara i??iyor musunuz
              if (degisken) {
                //kalan2
                //haftada3 kez spor yapar m??s??n??z
                if (degisken) {
                  //kalan1
                  //her g??ne spor isteyen 3 g??n yapmayan
                } else {
                  //kalan1
                  //her g??ne spor isteyen
                }
              } else {
                //kalan1
                //sigara i??ilmeyen program
              }
            }
          } else {
            //sporcu olmayan
            //kalan 7
            //Ekipman var m??
            if (degisken) {
              //kalan3
              //Y??zme biliyor musun
              if (degisken) {
                //kalan1
                //y??zme bilen ekipman?? olmayan gariban insan
              } else {
                //kalan2
                //covid ge??irdiniz mi
                if (degisken) {
                  //kalan1
                  //covid ge??iren ki??i
                } else {
                  //kalan1
                  //covid ge??irmemi?? ki??i
                }
              }
            } else {
              //kalan4
              //ekipman?? olmayanlar derne??i
              //T??m vucut mu ??al????t??rmak istersiniz?
              if (degisken) {
                //kalan2
                //haftada 3 g??n m?? istersiniz
                if (degisken) {
                  //kalan1
                } else {
                  //kalan1
                }
              } else {
                //kalan2
                //haftada 2 g??n m?? istersiniz
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
      print("??uanda cinsiyeti erkek olan elsenin i??i");
      //kalan durum 13
      //kilo vermek i??in mi yoksa v??cut geli??tirmek i??in mi ?
      if (degisken) {
        //kalan4
        //belinde sakatl??k var m?? ?
        if (degisken) {
          //kalan4
          //baca????nda sakatl??k var m??
          if (degisken) {
            //kalan 2
            //haftada 3 kez spor yapmak ister misiniz?
            if (degisken) {
              //kalan1
              //program ...
            } else {
              //kalan1
              //her g??n spor yapmak
            }
          } else {
            //kalan2
            //haftada 3 g??n spor yapmak ister misiniz
            if (degisken) {
              //kalan1
            } else {
              //kalan 1
              //herg??n spor yapmak isteyenlere y??nelik prog.
            }
          }
        } else {
          // belinde sakatl?????? olmayan kimse yokmu?? demek ki
        }
      } else {
        print("??uanda v??cut geli??tirmek i??in else");
        //kalan 9
        //v??cut geli??tirenler
        //belinde sakatl??k var m???
        if (degisken) {
          //kalan5
          //skolyozun var m???
          if (degisken) {
            //kalan3
            //pilates yapmak ister mi?
            if (degisken) {
              //kalan2
              //haftada 3g??n spor yapmak ister mi ?
              if (degisken) {
                //kalan 1
                //program
              } else {
                //kalan1
                //her g??n program
              }
            } else {
              //kalan1
              //skolyozu olan belinde rahats??zl?????? olan pilates istemeyenler
            }
          } else {
            //kalan2
            //skolyozu olmayan
            //baca????n??zda sakatl??k var m?? ?
            if (degisken) {
              //kalan1
              //program
            } else {
              //kalan1
              //program
            }
          }
        } else {
          print("??uanda belinde sakatl?????? olmayan elsenin i??i");
          //skolyozu olmayan belinde sakatl??k olmayan
          //kalan4
          //sporcu musunuz?
          if (degisken) {
            //kalan2
            //haftada3 g??n spor yapmak ister misiniz?
            if (degisken) {
              print("??uanda sporcu olan ve haftada 3 g??n spor yapan ifin i??i");
              //kalan1
              //program
            } else {
              //kalan1
              //program
            }
          } else {
            //sporcu olmayan 2 ki??i
            //kalan2
            //haftada 3 g??n spor yapmak ister misiniz?
            if (degisken) {
              //kalan1
              //program
            } else {
              //kalan1
              //belinde baca????nda sorun olamayan sporcu olamayan v??cut geli??tirmek isteyen erkek
            }
          }
        }
      }
    }

    if (degisken) {
    } else {}
  }
}
