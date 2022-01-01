import 'package:fitnessapp/model/Program.dart';
import 'package:flutter/cupertino.dart';

import 'Soru.dart';

class ViewModel extends ChangeNotifier {
  //Jenerik tipte 2 tane Liste belirledim.
  //Program Model ve Soru model classlarından nesneler oluşturdum
  //her birinin içini doldurdum ve oluşturduğum listelere atadım.
  //bu programları listelere atarken programfunction dosyasının içinde oluşturdum
  //soruları da soru function dosyasının içinde oluşturdum.
  //bu sayfada tamamen nesne oluşturup içini doldurup listelere atama işlemi bulunmakta.
  List<ProgramModel> programModelList = [];
  List<SoruModel> soruModelList = [];

  // ignore: non_constant_identifier_names
  ProgramFunction() {
    programModelList = [];
    ProgramModel _programModel;
    //Hamilelere özel 2 program

    _programModel = ProgramModel(
      name: 'Haftada 3 günlük hamilelere Özel Program',
      hareketler: [
        'Meditasyon',
        'Pilates',
        'Günlük hafif tempoda 30 dk yürüyüş',
      ],
      cinsiyetinizKadinMi: true,
      HamileMisiniz: true,
      Haftada3gunSporYapmakIstermisiniz: true,
    );

    programModelList.add(_programModel);
    _programModel = ProgramModel(
      name: 'Hergün hamilelere Özel Program',
      hareketler: [
        'Meditasyon',
        'Pilates',
        'Günlük hafif tempoda 30 dk yürüyüş',
      ],
      cinsiyetinizKadinMi: true,
      HamileMisiniz: true,
      HergunSporYapmakIstermisiniz: true,
    );
    //Kilo vermeye yönelik kadınlara özel program

    programModelList.add(_programModel);
    _programModel = ProgramModel(
      name:
          'Belinde bacağında sakatlığı olan zayıflamak isteyen yüzme bilen kişilere özel haftada 3günlük program',
      hareketler: [
        'yüzme',
        'Pilates',
        'Günlük hafif tempoda 30 dk yürüyüş',
      ],
      cinsiyetinizKadinMi: true,
      KiloVermekMiIstiyorsunuz: true,
      BelinizdeSakatlikVarmi: true,
      BacaklarinizdaSakatlikVarmi: true,
      SkolyozunVarmi: true,
      YuzmeBiliyorMusun: true,
      Haftada3gunSporYapmakIstermisiniz: true,
    );
    programModelList.add(_programModel);
    _programModel = ProgramModel(
      name: 'Kilo vermek isteyen ve rahatsızlığı olanlara özel program',
      hareketler: [
        'yüzme',
        'Pilates',
        'Günlük hafif tempoda 30 dk yürüyüş',
      ],
      cinsiyetinizKadinMi: true,
      KiloVermekMiIstiyorsunuz: true,
      BelinizdeSakatlikVarmi: true,
      BacaklarinizdaSakatlikVarmi: true,
      SkolyozunVarmi: true,
      YuzmeBiliyorMusun: true,
      HergunSporYapmakIstermisiniz: true,
    );
    programModelList.add(_programModel);
    _programModel = ProgramModel(
      name: 'Kilo vermek isteyen ve rahatsızlığı olanlara özel program',
      hareketler: [
        'Meditasyon',
        'Pilates',
        'Günlük hafif tempoda 30 dk yürüyüş',
      ],
      cinsiyetinizKadinMi: true,
      KiloVermekMiIstiyorsunuz: true,
      BelinizdeSakatlikVarmi: true,
      BacaklarinizdaSakatlikVarmi: true,
      SkolyozunVarmi: true,
      Haftada3gunSporYapmakIstermisiniz: true,
    );
    programModelList.add(_programModel);
    _programModel = ProgramModel(
      name: 'Rahatsızlığı olup kilo vermek isteyenlere yönelik günlük program ',
      hareketler: [
        'yüzme',
        'Pilates',
        'Günlük hafif tempoda 30 dk yürüyüş',
      ],
      cinsiyetinizKadinMi: true,
      KiloVermekMiIstiyorsunuz: true,
      BelinizdeSakatlikVarmi: true,
      BacaklarinizdaSakatlikVarmi: true,
      SkolyozunVarmi: true,
    );
    programModelList.add(_programModel);
    _programModel = ProgramModel(
      name:
          'Belinde bacağında sakatlığı olan skolyozu zayıflamak isteyen kişilere  özel 3 günlük  program',
      hareketler: [
        'yüzme',
        'Pilates',
        'Günlük hafif tempoda 30 dk yürüyüş',
      ],
      cinsiyetinizKadinMi: true,
      KiloVermekMiIstiyorsunuz: true,
      BelinizdeSakatlikVarmi: true,
      BacaklarinizdaSakatlikVarmi: true,
    );
    programModelList.add(_programModel);

    _programModel = ProgramModel(
      name:
          'Belinde ve bacağında rahatsızlığı olan kilo vermek isteyen kadınlara özel günlük program',
      hareketler: [
        'Meditasyon',
        'Pilates',
        'Günlük hafif tempoda 30 dk yürüyüş',
      ],
      cinsiyetinizKadinMi: true,
      KiloVermekMiIstiyorsunuz: true,
      BelinizdeSakatlikVarmi: true,
      BacaklarinizdaSakatlikVarmi: true,
      HergunSporYapmakIstermisiniz: true,
    );
    programModelList.add(_programModel);
    _programModel = ProgramModel(
      name: 'Belinden rahatsızlığı olan kadınlara özel 3 günlük program',
      hareketler: [
        'Meditasyon',
        'Pilates',
        'Günlük hafif tempoda 30 dk yürüyüş',
      ],
      cinsiyetinizKadinMi: true,
      KiloVermekMiIstiyorsunuz: true,
      BelinizdeSakatlikVarmi: true,
      SkolyozunVarmi: true,
      Haftada3gunSporYapmakIstermisiniz: true,
    );
    programModelList.add(_programModel);

    _programModel = ProgramModel(
      name: 'Kilo vermek isteyen kadınlara özel program',
      hareketler: [
        'Meditasyon',
        'Pilates',
        'Günlük hafif tempoda 30 dk yürüyüş',
      ],
      cinsiyetinizKadinMi: true,
      KiloVermekMiIstiyorsunuz: true,
      HergunSporYapmakIstermisiniz: true,
    );
    programModelList.add(_programModel);
    //Vücut geliştirmeye yönelik program
    //-------------------------------------------------------------------
    //-------------------------------------------------------------------
    _programModel = ProgramModel(
      name: 'sigara içenlere ve yüzme bilenlere göre program',
      hareketler: [
        'Meditasyon',
        'Pilates',
        'Günlük hafif tempoda 30 dk yürüyüş',
      ],
      VucutGelistirmekMiIstiyorsunuz: true,
      cinsiyetinizKadinMi: true,
      EkipmanVarmi: true,
      YuzmeBiliyorMusun: true,
      SigaraIciyorMusunuz: true,
    );

    programModelList.add(_programModel);
    _programModel = ProgramModel(
      name: 'Yüzme bilenlere ve ekipmanı olanlara özel program',
      hareketler: [
        'Meditasyon',
        'Pilates',
        'Günlük hafif tempoda 30 dk yürüyüş',
      ],
      cinsiyetinizKadinMi: true,
      EkipmanVarmi: true,
      YuzmeBiliyorMusun: true,
      VucutGelistirmekMiIstiyorsunuz: true,
    );

    programModelList.add(_programModel);
    _programModel = ProgramModel(
      name: 'Sporcu, ekipmanları olanlara ve yüzme bilmeyenlere özel program',
      hareketler: [
        'Meditasyon',
        'Pilates',
        'Günlük hafif tempoda 30 dk yürüyüş',
      ],
      cinsiyetinizKadinMi: true,
      EkipmanVarmi: true,
      VucutGelistirmekMiIstiyorsunuz: true,
    );

    programModelList.add(_programModel);
    //Ekipmanları olmayanların programı
    _programModel = ProgramModel(
      name: 'belinden yok bacağından sakatlığı olan  ekipmanı olanlar 3 gün',
      hareketler: [
        'Meditasyon',
        'Pilates',
        'Günlük hafif tempoda 30 dk yürüyüş',
      ],
      VucutGelistirmekMiIstiyorsunuz: true,
      cinsiyetinizKadinMi: true,
      SigaraIciyorMusunuz: true,
      Haftada3gunSporYapmakIstermisiniz: true,
    );

    programModelList.add(_programModel);
    _programModel = ProgramModel(
      name: 'ekipmanı olmayan sigara içmeyenlere özel program',
      hareketler: [
        'Meditasyon',
        'Pilates',
        'Günlük hafif tempoda 30 dk yürüyüş',
      ],
      VucutGelistirmekMiIstiyorsunuz: true,
      cinsiyetinizKadinMi: true,
      SigaraIciyorMusunuz: true,
      HergunSporYapmakIstermisiniz: true,
    );

    programModelList.add(_programModel);
    _programModel = ProgramModel(
      name: 'ekipmanı olmayan sigara içmeyenlere özel program',
      hareketler: [
        'Meditasyon',
        'Pilates',
        'Günlük hafif tempoda 30 dk yürüyüş',
      ],
      VucutGelistirmekMiIstiyorsunuz: true,
      cinsiyetinizKadinMi: true,
      Haftada3gunSporYapmakIstermisiniz: true,
    );

    programModelList.add(_programModel);

    _programModel = ProgramModel(
      name: 'yüzme bilenlere  özel program',
      hareketler: ['Orta hızda yürüyüş', '2*10 squat', 'zorlamayan egzersiz'],
      cinsiyetinizKadinMi: true,
      VucutGelistirmekMiIstiyorsunuz: true,
      EkipmanVarmi: true,
      YuzmeBiliyorMusun: true,
    );

    programModelList.add(_programModel);
    _programModel = ProgramModel(
      name: 'covid geçirenlere ve ekipmanı olanlara özgü program',
      hareketler: ['Orta hızda yürüyüş', '2*10 squat', 'zorlamayan egzersiz'],
      CovidGecirdinizMi: true,
      cinsiyetinizKadinMi: true,
      VucutGelistirmekMiIstiyorsunuz: true,
      EkipmanVarmi: true,
    );

    programModelList.add(_programModel);

    _programModel = ProgramModel(
      name: 'vücut geliştirmek isteyen ve ekipmanı olanlar için program',
      hareketler: ['Orta yürüyüş', '2*10 squat', 'zorlamayan egzersiz'],
      cinsiyetinizKadinMi: true,
      VucutGelistirmekMiIstiyorsunuz: true,
      EkipmanVarmi: true,
    );
    //Vücut -> Sporcu-> Ekipmanı yok-> Dengende problem var mı
    programModelList.add(_programModel);
    _programModel = ProgramModel(
      name: 'Denge problemi olanlara özel haftada 3 gün programı',
      hareketler: ['Orta yürüyüş', '2*10 squat', 'zorlamayan egzersiz'],
      cinsiyetinizKadinMi: true,
      VucutGelistirmekMiIstiyorsunuz: true,
      DengendeProblemVarmi: true,
      Haftada3gunSporYapmakIstermisiniz: true,
    );

    programModelList.add(_programModel);

    _programModel = ProgramModel(
        name: ' Denge problemi olanlara her güne özel programı',
        hareketler: ['Orta yürüyüş', '2*10 squat', 'zorlamayan egzersiz'],
        cinsiyetinizKadinMi: true,
        VucutGelistirmekMiIstiyorsunuz: true,
        DengendeProblemVarmi: true,
        HergunSporYapmakIstermisiniz: true);

    programModelList.add(_programModel);
    _programModel = ProgramModel(
        name:
            'ekipmanı olmayan denge problemi olmayanlara özel her güne program',
        hareketler: ['Orta yürüyüş', '2*10 squat', 'zorlamayan egzersiz'],
        cinsiyetinizKadinMi: true,
        VucutGelistirmekMiIstiyorsunuz: true,
        HergunSporYapmakIstermisiniz: true);

    programModelList.add(_programModel);
    _programModel = ProgramModel(
      name: 'ekipmanı olmayan denge problemi olmayanlara özel 3 günlük program',
      hareketler: ['Orta yürüyüş', '2*10 squat', 'zorlamayan egzersiz'],
      cinsiyetinizKadinMi: true,
      VucutGelistirmekMiIstiyorsunuz: true,
      Haftada3gunSporYapmakIstermisiniz: true,
    );

    programModelList.add(_programModel);
    //Cinsiyet erkek olanlara özel prog.

    _programModel = ProgramModel(
      name: 'Rahatsızlığı olan Erkeklere özel 3 günlük prog.',
      hareketler: [
        'ağırlık Kaldırma',
        'tempolu koşma',
        '10*3 set squat',
        'hareket araştır gel',
      ],
      KiloVermekMiIstiyorsunuz: true,
      BelinizdeSakatlikVarmi: true,
      BacaklarinizdaSakatlikVarmi: true,
      Haftada3gunSporYapmakIstermisiniz: true,
    );

    programModelList.add(_programModel);
    _programModel = ProgramModel(
      name: 'Rahatsızlığı olan erkeklere özel 3 güünlük program',
      hareketler: [
        'ağırlık Kaldırma',
        'tempolu koşma',
        '10*3 set squat',
        'hareket araştır gel',
      ],
      KiloVermekMiIstiyorsunuz: true,
      BelinizdeSakatlikVarmi: true,
      BacaklarinizdaSakatlikVarmi: true,
    );

    programModelList.add(_programModel);
    _programModel = ProgramModel(
      name: 'Belinden rahatsızlığı olan erkeklere özel 3günlük program',
      hareketler: [
        'ağırlık Kaldırma',
        'tempolu koşma',
        '10*3 set squat',
        'hareket araştır gel',
      ],
      KiloVermekMiIstiyorsunuz: true,
      BelinizdeSakatlikVarmi: true,
      Haftada3gunSporYapmakIstermisiniz: true,
    );

    programModelList.add(_programModel);
    _programModel = ProgramModel(
      name: 'Belinden rahatsızlığı olan erkeklere özel 3 günlük program',
      hareketler: [
        'ağırlık Kaldırma',
        'tempolu koşma',
        '10*3 set squat',
        'hareket araştır gel',
      ],
      KiloVermekMiIstiyorsunuz: true,
      BelinizdeSakatlikVarmi: true,
    );
    programModelList.add(_programModel);
    //Belinde rahatsızlığı olmayanları daha hiç yapmadık kilo vermek isteyenlere oraya geldim.
    //Vücut geliştirmek isteyenlerin programı
//cinsiyeti erkek ve Vücut gelistirenlere yönelik program

    _programModel = ProgramModel(
      name: 'Skolyozu olan erkeklere özel 3 günlük program',
      hareketler: [
        'Yüzme',
        'Pilates',
        'hafif tempo yürüyüş',
      ],
      BelinizdeSakatlikVarmi: true,
      SkolyozunVarmi: true,
      PilatesMiYapmakIstersiniz: true,
      Haftada3gunSporYapmakIstermisiniz: true,
    );

    programModelList.add(_programModel);
    _programModel = ProgramModel(
      name:
          'Skolyozu olan pilates yapmak isteyen erkeklere özel 7 günlük program',
      hareketler: [
        'Yüzme',
        'Pilates',
        'hafif tempo yürüyüş',
      ],
      BelinizdeSakatlikVarmi: true,
      SkolyozunVarmi: true,
      PilatesMiYapmakIstersiniz: true,
    );

    programModelList.add(_programModel);
    _programModel = ProgramModel(
      name: 'Skolyozu olan erkeklere özel 3 günlük program',
      hareketler: [
        'Yüzme',
        'Pilates',
        'hafif tempo yürüyüş',
      ],
      BelinizdeSakatlikVarmi: true,
      SkolyozunVarmi: true,
      Haftada3gunSporYapmakIstermisiniz: true,
    );

    programModelList.add(_programModel);

    _programModel = ProgramModel(
        name: 'Erkek sporculara özel program',
        hareketler: [
          'Yüzme',
          'Pilates',
          'hafif tempo yürüyüş',
        ],
        SporcuMusunuz: true,
        Haftada3gunSporYapmakIstermisiniz: true);

    programModelList.add(_programModel);
    _programModel = ProgramModel(
      name: 'Sporculara özel ',
      hareketler: [
        'Yüzme',
        'Pilates',
        'hafif tempo yürüyüş',
      ],
      SporcuMusunuz: true,
    );

    programModelList.add(_programModel);
    _programModel = ProgramModel(
      name: 'Belinde bacağında sakatlık olan erkeklere özel program',
      hareketler: [
        'Yüzme',
        'Pilates',
        'hafif tempo yürüyüş',
      ],
      BelinizdeSakatlikVarmi: true,
      BacaklarinizdaSakatlikVarmi: true,
    );

    programModelList.add(_programModel);
    _programModel = ProgramModel(
      name: 'Belinde rahatsızlığı olan erkeklere özel program ',
      hareketler: [
        'Yüzme',
        'Pilates',
        'hafif tempo yürüyüş',
      ],
      BelinizdeSakatlikVarmi: true,
    );

    programModelList.add(_programModel);
    _programModel = ProgramModel(
        name: 'Haftada 3 günlük program ',
        hareketler: [
          'Yüzme',
          'Pilates',
          'hafif tempo yürüyüş',
        ],
        Haftada3gunSporYapmakIstermisiniz: true);

    programModelList.add(_programModel);
    _programModel = ProgramModel(
      name: 'Her güne spor programı',
      hareketler: [
        'Yüzme',
        'Pilates',
        'hafif tempo yürüyüş',
      ],
    );

    programModelList.add(_programModel);
  }

  // ignore: non_constant_identifier_names
  SoruFunction() {
    soruModelList = [];

    SoruModel soruModel = SoruModel(
        soru: 'Cinsiyetiniz Kadın mı ?',
        yesFunction: ((ProgramModel element) =>
            element.cinsiyetinizKadinMi == null),
        noFunction: (element) => element.cinsiyetinizKadinMi == true);

    soruModelList.add(soruModel);
    //buradaki mantık şudur; başta soruları null atamış. Daha sonra program model Listteki
    // programlarda sorulara true atamış.
    //Daha sonra sorularda verilen cevaplara göre eleme yapmış.
    //Eleme nasıl yapılmış dersek eğer ki sorunun cevabı evet ise yes function ile nulla eşit olan
    // tüm sorular ve programlar siliniyor sadece programmodelListteki cevabı true olan sorular kalıyor.

    soruModel = SoruModel(
        soru: 'Hamile misiniz?',
        yesFunction: (ProgramModel element) => element.HamileMisiniz == null,
        noFunction: (element) => element.HamileMisiniz == true);

    soruModelList.add(soruModel);

    soruModel = SoruModel(
        soru: 'Kilo Vermek mi istiyorsunuz ?',
        yesFunction: (ProgramModel element) =>
            element.KiloVermekMiIstiyorsunuz == null,
        noFunction: (element) => element.KiloVermekMiIstiyorsunuz == true);

    soruModelList.add(soruModel);

    soruModel = SoruModel(
        soru: 'Bacaklarınızda Sakatlık var mı ?',
        yesFunction: (ProgramModel element) =>
            element.BacaklarinizdaSakatlikVarmi == null,
        noFunction: (element) => element.BacaklarinizdaSakatlikVarmi == true);

    soruModelList.add(soruModel);

    soruModel = SoruModel(
        soru: 'Belinizde sakatlık var mı?',
        yesFunction: (ProgramModel element) =>
            element.BelinizdeSakatlikVarmi == null,
        noFunction: (element) => element.BelinizdeSakatlikVarmi == true);

    soruModelList.add(soruModel);

    soruModel = SoruModel(
        soru: 'Evinizde yeterli ekipman var mı?',
        yesFunction: (ProgramModel element) =>
            element.EvinizdeYeterliEkipmanVarmi == null,
        noFunction: (element) => element.EvinizdeYeterliEkipmanVarmi == true);

    soruModelList.add(soruModel);

    soruModel = SoruModel(
        soru: 'Sporcu musunuz ?',
        yesFunction: (ProgramModel element) => element.SporcuMusunuz == null,
        noFunction: (element) => element.SporcuMusunuz == true);

    soruModelList.add(soruModel);

    soruModel = SoruModel(
        soru: 'Skolyozunuz var mı?',
        yesFunction: (ProgramModel element) => element.SkolyozunVarmi == null,
        noFunction: (element) => element.SkolyozunVarmi == true);

    soruModelList.add(soruModel);

    soruModel = SoruModel(
        soru: 'Dengede probleminiz var mı?',
        yesFunction: (ProgramModel element) =>
            element.DengendeProblemVarmi == null,
        noFunction: (element) => element.DengendeProblemVarmi == true);

    soruModelList.add(soruModel);

    soruModel = SoruModel(
        soru: 'Yüzme biliyor musunuz?',
        yesFunction: (ProgramModel element) =>
            element.YuzmeBiliyorMusun == null,
        noFunction: (element) => element.YuzmeBiliyorMusun == true);

    soruModelList.add(soruModel);

    soruModel = SoruModel(
        soru: 'Liflerinde yırtılma var mı?',
        yesFunction: (ProgramModel element) =>
            element.LiflerindeYirtilmaVarmi == null,
        noFunction: (element) => element.LiflerindeYirtilmaVarmi == true);

    soruModelList.add(soruModel);

    soruModel = SoruModel(
        soru: 'Evinizde gerekli ekipmanınız var mı ?',
        yesFunction: (ProgramModel element) => element.EkipmanVarmi == null,
        noFunction: (element) => element.EkipmanVarmi == true);

    soruModelList.add(soruModel);

    soruModel = SoruModel(
        soru: 'Meditasyon ya da yoga yapmak ister misiniz ?',
        yesFunction: (ProgramModel element) =>
            element.MeditasyonYadaYogaMiYapmakIstersiniz == null,
        noFunction: (element) =>
            element.MeditasyonYadaYogaMiYapmakIstersiniz == true);

    soruModelList.add(soruModel);

    soruModel = SoruModel(
        soru: 'Covid geçirdiniz mi?',
        yesFunction: (ProgramModel element) =>
            element.CovidGecirdinizMi == null,
        noFunction: (element) => element.CovidGecirdinizMi == true);

    soruModelList.add(soruModel);

    soruModel = SoruModel(
        soru: 'Sigara içiyor musunuz ?',
        yesFunction: (ProgramModel element) =>
            element.SigaraIciyorMusunuz == null,
        noFunction: (element) => element.SigaraIciyorMusunuz == true);

    soruModelList.add(soruModel);

    soruModel = SoruModel(
        soru: 'Vücut geliştirmek mi istiyorsunuz?',
        yesFunction: (ProgramModel element) =>
            element.VucutGelistirmekMiIstiyorsunuz == null,
        noFunction: (element) =>
            element.VucutGelistirmekMiIstiyorsunuz == true);

    soruModelList.add(soruModel);

    soruModel = SoruModel(
        soru: 'Çalışmak istediğiniz bölge kol mu ?',
        yesFunction: (ProgramModel element) =>
            element.CalismakIstediginizBolgeKolMu == null,
        noFunction: (element) => element.CalismakIstediginizBolgeKolMu == true);

    soruModelList.add(soruModel);

    soruModel = SoruModel(
        soru: 'Çalıtırmak istediğiniz bölge bacak bölgesi mi ?',
        yesFunction: (ProgramModel element) =>
            element.CalismakIstediginizBolgeBacakBolgesiMi == null,
        noFunction: (element) =>
            element.CalismakIstediginizBolgeBacakBolgesiMi == true);

    soruModelList.add(soruModel);

    soruModel = SoruModel(
        soru: 'Tüm kasları mı çalıştırmak istiyorsunuz ?',
        yesFunction: (ProgramModel element) =>
            element.TumKaslariMiCalistirmakIstiyorsunuz == null,
        noFunction: (element) =>
            element.TumKaslariMiCalistirmakIstiyorsunuz == true);

    soruModelList.add(soruModel);

    soruModel = SoruModel(
        soru: 'Haftada 3 gün spor yapmak ister misiniz?',
        yesFunction: (ProgramModel element) =>
            element.Haftada3gunSporYapmakIstermisiniz == null,
        noFunction: (element) =>
            element.Haftada3gunSporYapmakIstermisiniz == true);

    soruModelList.add(soruModel);

    soruModel = SoruModel(
        soru: 'Her gün spor yapmak ister misiniz?',
        yesFunction: (ProgramModel element) =>
            element.HergunSporYapmakIstermisiniz == null,
        noFunction: (element) => element.HergunSporYapmakIstermisiniz == true);

    soruModelList.add(soruModel);

    soruModel = SoruModel(
        soru: 'Pilates mi yapmak istersiniz ?',
        yesFunction: (ProgramModel element) =>
            element.PilatesMiYapmakIstersiniz == null,
        noFunction: (element) => element.PilatesMiYapmakIstersiniz == true);

    soruModelList.add(soruModel);
  }
}
