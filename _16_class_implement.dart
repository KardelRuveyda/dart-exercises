void main(params) {
  
}

abstract class IStudent{
  final String name;
  final int age;

void saySomething(){
  print(age);
}
  IStudent(this.name,this.age);

}

class Student implements IStudent {
  final String name;
  final int age;

  Student(this.name,this.age);
  
  @override
  void saySomething() {
    // TODO: implement saySomething
  }
  
}

class Student2 {
  final String name;
  final int age;

  Student2(this.name,this.age);
  
}