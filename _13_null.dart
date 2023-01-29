void main(params) {
  int? newMoney;
  if (newMoney != null) {
    print(newMoney + 40);
  } else {
    print(10 + 20);
  }

//Bankaya 3 tane müşteri gelsin. Birinin 50 TL'si var diğerinin hesabı yok, bir başkasının ise 0' TL'si var.
// Hesabı olmayan hesap aaçalım, 0 Tl'si olana kredi verelim. 50 tl si olana hoşgelidniz.

//Hesabı yok demek sıfır demek mi? Hayır!
// Listenin tam sayı olduğunu soylediğin için null verirseniz hata laır.
// List<int> customers = [50,null,0];

//soru işareti kullanırsanız , bu listede nullable değerlerin olacağına da işarattir.
  List<int?> customers = [50, null, 0];
  for (var item in customers) {
    if (item != null) {
      if (item == 0) {
        print("Size kredi verebiliriz");
      } else if (item == 50) {
        print("Hoşgeldiniz.");
      }
    } else {
      print("Yeni hesabınız açılacak!");
    }
  }
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

void CustomerClassCheck(){
  Customer customer = Customer('kardel', 0, 27, 'istanbul');
  print(customer.age);
}