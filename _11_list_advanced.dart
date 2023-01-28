void main(params) {
  // çok tavsiye edilmez.
  List<dynamic> dynamicList = [1, 'a', true];

  for (var item in dynamicList) {
    print(item);
  }

  List<String> userNames = ['kardel', 'ruveyda', 'cetin'];

  print(userNames.contains('kardel')
      ? 'Dizide bulunuyor.'
      : 'Dizide bulunmuyor.');

  // for in nasıl çalışır?
  // performans olarak contains tabii ki daha avantajlıdır.
  for (var element in userNames) {
    if (element == 'kardel') {
      print('Dizide bulunuyor');
    } else {
      print('Dizide bulunmuyor.');
    }
  }
} 
