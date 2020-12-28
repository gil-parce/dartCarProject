import 'human.dart';
import 'car.dart';

var human1 = Human('Isra', 41);
var human2 = Human('Andres', 39);
var human3 = Human('Kevin', 37);
var human4 = Human('Gil', 27);

var car1 = Car('Ford', 1);
var car2 = Car('Fiat', 2);
var car3 = Car('Mercedes', 3);

void main() {
  print("${car1.model} has ${car1.seats} places available.");
  print("The human known as ${human2.name} is ${human2.age} years old.");

  car1.sitPassenger(human1);
  car1.sitPassenger(human1);
  print(car1);
}