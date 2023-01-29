void main(params) {
  final color = Color.blue;
// numarası
print(color.index);
//ismi
print(color.name);
  switch(color){
    
    case Color.blue:
      print("mavi");
      break;
    case Color.red:
      print("kırmızı");
      break;
    case Color.black:
      print("siyah");
      break;
    case Color.white:
      print("beyaz");
      break;
  }
}

enum Color {
  blue,
  red,
  black,
  white
}