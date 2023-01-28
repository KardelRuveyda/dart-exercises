void main(params) {
  controlUserMoney();
  controlUserMoneyWithParameter(5);
  controlUserMoneyWithMinimumValue(3, 2);
  convertToStandartDolar(1500);
  convertToStandartDolar(2500, dolarIndex: 12);
  convertToEuro(userMoney: 800);
}

//parametresiz bir metot
void controlUserMoney() {
  final int userMoney = 0;

  if (userMoney > 0) {
    print('Kullanıcının bankada parası var.');
  } else {
    print('Kullanıcının bankada parası yok.');
  }
}

//parametreli bir metot

void controlUserMoneyWithParameter(int money) {
  if (money > 0) {
    print('Kullanıcının bankada parası var.');
  } else {
    print('Kullanıcının bankada parası yok.');
  }
}

void controlUserMoneyWithMinimumValue(int money, int minumumValue) {
  if (money > minumumValue) {
    print('Kullanıcının bankada parası var.');
  } else {
    print('Kullanıcının bankada parası yok.');
  }
}

// Dolara çeviren metot aşağıdaki gibidir.
int convertToStandartDolar(int userMoney, {int dolarIndex = 19}) {
  return userMoney ~/ dolarIndex;
}

int convertToEuro({required int userMoney, int dolarIndex = 19}) {
  return userMoney ~/ dolarIndex;
}
