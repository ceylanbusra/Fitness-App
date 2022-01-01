class ProgramModel {
  String name;
  List<String> hareketler;
  //Sorular yaz
  bool? cinsiyetinizKadinMi;
  bool? HamileMisiniz;
  bool? KiloVermekMiIstiyorsunuz;
  bool? BacaklarinizdaSakatlikVarmi;
  bool? BelinizdeSakatlikVarmi;
  bool? EvinizdeYeterliEkipmanVarmi;
  bool? SporcuMusunuz;
  bool? SkolyozunVarmi;
  bool? DengendeProblemVarmi;
  bool? YuzmeBiliyorMusun;
  bool? LiflerindeYirtilmaVarmi;
  bool? SporcuMusun;
  bool? EkipmanVarmi;
  bool? MeditasyonYadaYogaMiYapmakIstersiniz;
  bool? CovidGecirdinizMi;
  bool? SigaraIciyorMusunuz;
  bool? VucutGelistirmekMiIstiyorsunuz;
  bool? CalismakIstediginizBolgeKolMu;
  bool? CalismakIstediginizBolgeBacakBolgesiMi;
  bool? TumKaslariMiCalistirmakIstiyorsunuz;
  bool? Haftada3gunSporYapmakIstermisiniz;
  bool? HergunSporYapmakIstermisiniz;
  bool? PilatesMiYapmakIstersiniz;

  ProgramModel({
    required this.name,
    required this.hareketler,
    this.BacaklarinizdaSakatlikVarmi,
    this.BelinizdeSakatlikVarmi,
    this.CalismakIstediginizBolgeBacakBolgesiMi,
    this.CalismakIstediginizBolgeKolMu,
    this.CovidGecirdinizMi,
    this.DengendeProblemVarmi,
    this.EkipmanVarmi,
    this.EvinizdeYeterliEkipmanVarmi,
    this.HamileMisiniz,
    this.KiloVermekMiIstiyorsunuz,
    this.LiflerindeYirtilmaVarmi,
    this.MeditasyonYadaYogaMiYapmakIstersiniz,
    this.SigaraIciyorMusunuz,
    this.SkolyozunVarmi,
    this.SporcuMusun,
    this.SporcuMusunuz,
    this.VucutGelistirmekMiIstiyorsunuz,
    this.YuzmeBiliyorMusun,
    this.cinsiyetinizKadinMi,
    this.Haftada3gunSporYapmakIstermisiniz,
    this.HergunSporYapmakIstermisiniz,
    this.TumKaslariMiCalistirmakIstiyorsunuz,
    this.PilatesMiYapmakIstersiniz,
  });
}
