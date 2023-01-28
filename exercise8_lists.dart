void main(params) {
  List<int> moneys = [100, 110, 50];

  // Birinci müşteri parası

  print('Birinci müşteri parası : ${moneys[0]}');

  //Para birimlerini parası büyük olana göre sırala.
  moneys.sort();
  //5 tl de eklensin. 5 tl listenin en başına eklenir.
  moneys.add(5);
  //sona eklemek istersem.( tolist() dendiği an yeni bir liste yeni bir data set oluşmuş olur. )
  print(moneys.reversed.toList());
  // Spesifik bir alana eklemek istiyorsam;
  moneys.insert(2, 250);
  //tersine çevirme işlemi ise
  moneys.reversed.toList();

  print(moneys);

  //Listeler referans olduğu için
  //Final yaptığınızda nesne olarak değiştirilemez olsa da listenin içerisindeki neslere dokunup değiştirip işlem yapılabilir.
  final List<int> newMoneys = [200, 300, 400, 500];
  newMoneys.add(5);
  //Listenin içerisi temizlenir.
  newMoneys.clear();
  print(newMoneys);
}
