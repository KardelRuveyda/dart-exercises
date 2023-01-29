void main(params) {
  CustomerClassCheck();
}

class Customer {
  late final String name;
  late final int money;
  late final int age;
  late final String city;

  Customer(String name, int money, int age, String city) {
    this.name = name;
    this.money = money;
    this.age = age;
    this.city = city;
  }

  //Değişken gelecek ve constructor tarafında doldurulacak ise late yapısı kullanılabilir.
  //İlk başta bir anlamı değeri yok, intialize edildiğinde olacak.
}

class Customer2 {
  //age ve city alanları zorunlu alanlar değiller.
  late final String name;
  late final int money;
  late final int? age;
  late final String? city;

// aşağıdaki gibi {} içine alıp yazdığımızda bu alanları değer olarak vermek zorunda olmadığımız görülür.
  Customer2(String name, int money, {int? age, String? city}) {
    this.name = name;
    this.money = money;
    this.age = age;
    this.city = city;
  }
}

class Customer3 {
  late final String name;
  late final int money;
  late final int? age;
  late final String? city;
  // sürekli final vermek zorunda değilsiniz.
  // bu değişken sonradan gelecek. Late derseniz herhangi bir zamanda verebilirsiniz.
  // late dolmadan, değer dolmadan önce çağırırsanız hata alabilirsiniz.
  // late final kullanırsanız yüzde yüz olarak constructor da kullanmak gerekiyor. 

  late final String userCode;
// aşağıdaki gibi {} içine alıp yazdığımızda bu alanları değer olarak vermek zorunda olmadığımız görülür.
  Customer3(String name, int money, {int? age, String? city}) {
    this.name = name;
    this.money = money;
    this.age = age;
    this.city = city;
    userCode = (city ?? 'tr') + name;

    // ?? kontrolü yaparak kullanılabilir.
  }
}



void CustomerClassCheck() {
  Customer customer = Customer('test', 0, 5, 'istanbul');
  Customer2 customer2 = Customer2("test", 0);
  Customer2 customer3 = Customer2("test", 0, age: 12);

  print(customer.age);
  print(customer2.age);
  print(customer3.age);
}
