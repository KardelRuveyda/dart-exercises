void main(params) {
  Map<String, int> users = {'kardel': 50, 'ruveyda': 60, 'cetin': 80};

//Burada ${users['kardel']} "users" daki alanda "kardel" keyinin karşılığı olan valueyi verir.
  print('kardelin parası ${users['kardel']}');

  print('-------------------------');
  // Buradaki örnekte users içerisindeki keyler içerisinde dönülür.
  // Döndükçe ${item} ile keyin adı, ${users[item]} ile de keyin valuesi yazdırılır.
  for (var item in users.keys) {
    print('${item} - ${users[item]}');
  }

  print('-------------------------');

  // Buradaki mantık da aynıdır.
  // Ancak usersın lengthi içerisinde dönüldüğü için elementAt fonksyonu kullanılarak keys ve valuesler yazdırılır.

  for (var i = 0; i < users.length; i++) {
    print('${users.keys.elementAt(i)} - ${users.values.elementAt(i)}');
  }
  print('-------------------------');

  //maplerde  müşteriler olsun, müşterilerin birden fazla hesabı olabilir.
  //kardel'in üç hesabı var 100,200,300
  //ruveyda iki hesabı var 50,60,70

  // Müşterilerin hesaplarını kontrol et, herhangi bir hesapta 100 tl den fazladan olan varsa krediniz hazır diyebilirsin.
  print('------------------------------');

  // Mapleme işlemi aşağıdaki gibi bir şekilde tanımlanmıştır.
  // Burada her müşterinin birden fazla hesabı bulunmaktadır.
  final Map<String, List<int>> kardelBank = {
    'kardel': [100, 200, 300],
    'ruveyda': [50, 60, 70]
  };

// Maps işlemine aşağıdaki gibi bir yazımla yeni müşteri ekleyebilirsiniz.
  kardelBank['cetin'] = [40, 50];

// öncelikle kardelBank nesnesindeki keysler içerisinde dönülür.
  for (var item in kardelBank.keys) {
    //bankanın tüm elamanları
    //sonrasında bu kardelBank'a bu itemların değeri verildiğinde geri dönüş değeri liste olduğu için bir for döngüsüne daha ihtiyaç vardır.
    for (var money in kardelBank[item]!) {
      if (money > 100) {
        print("Kredin hazır!");
        break;
        //burada eğer koda devam etmeyecekseniz return diyebilirsiniz.
        //devam edecekseniz break demelisiniz. break sadece bu scope özelinde return yapar
        // aşağıdaki kodun çalışmasını etkilemez.
      }
    }
  }

  // müşterilerin tüm hesaplarındaki toplam mebla
  print('--------------------------');
  for (var item in kardelBank.keys) {
    int result = 0;
    for (var money in kardelBank[item]!) {
      result += money;
    }
    print('${item} senin toplan paran -> $result');
  }
}
