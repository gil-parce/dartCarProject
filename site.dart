import 'human.dart';
import 'car.dart';

var human1 = Human('Isra', 41);
var human2 = Human('Andres', 39);
var human3 = Human('Kevin', 37);
var human4 = Human('Gil', 27);
var human0 = Human('Elon Musk\'s imagination', null);

var car1 = Car('Ford', 1);
var car2 = Car('Fiat', 2);
var car3 = Car('Mercedes', 3);
var car4 = Car('Tesla', 4);

void main() {

  car1.sitPassenger(human1);
  car1.sitDriver(human3);
  print(car1);

  car2.sitDriver(human1);
  car2.sitPassenger(human3);
  print(car2);

  car3.sitDriver(human4);
  car3.sitPassenger(human3);
  car3.sitPassenger(human2);
  car3.sitPassenger(human1);
  print(car3);

  car4.sitPassenger(human1);
  car4.sitPassenger(human2);
  car4.sitPassenger(human3);
  car4.sitPassenger(human4);
  print(car4);

}