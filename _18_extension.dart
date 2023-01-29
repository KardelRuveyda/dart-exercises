void main(List<String> args) {
  if('ali'.isAdmin()){
    print('object');
  }else {
    print('no');
  }

// eğer nullable olursa
  String? name;
  name.isAdmin();
}

// String? denmelidir nullable olursa
extension StringUserCheckExtension on String? {
  bool isAdmin(){
    // ?? nullable kontorlü yapılır. 
    return (this ?? '').toLowerCase() == 'admin'.toLowerCase();
  }
}