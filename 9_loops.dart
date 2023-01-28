void main(params) {
  List<int> moneyCustomerNews = [100, 30, 60, 50];
  // For Yapısı. İki çeşiti vardır for ve for in
  moneyCustomerNews.sort();
  for (var i = 0; i < moneyCustomerNews.length; i++) {
    print('müşteri parası : ${moneyCustomerNews[i]}');

    if (moneyCustomerNews[i] > 45) {
      print("Zenginsin!");
    } else {
      print("Fakirsin!");
    }
  }
}
