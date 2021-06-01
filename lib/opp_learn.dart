

class Person{
  String name;
  int age;

  Person(this.name, this.age);

  @override
  String toString(){
    return 'name:$name, age:$age';
  }
}

class Student extends Person{
  Student(String name, int age) : super(name, age);

}