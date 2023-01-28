void main(params) {
  //Değişken tanımlanır.
  int money = 5;

// 5 arttırdık
  money = money + 5;
  // 1 arttırdık
  money += 1;
  money++;

  String name = "Kardel";
  String surname = "Çetin";

  // + operator sayeside iki string yan yana yazılır.
  print(name + surname);

//Karşılaştırma Operatörlüğü
// "=="
  if (name == "Kardel") {}
//!=
  if (name.length != 2) {}
//<=
  if (name.length <= 2) {}
//>=
  if (name.length >= 3) {}

// Kalan çift mi tek mi?

  int myMoney = 28;
  print(myMoney % 2 == 0 ? "Çift" : "Tek");

// hazır gelen yapılar kullanılabilir. isEven ve isOdd
  print(myMoney.isEven);
  print(myMoney.isOdd);
}
