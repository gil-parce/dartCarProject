import 'human.dart';

class Car {
  String model;
  int seats;
  List<Human> seatedPassengers = [];

  Car(this.model, this.seats);

  void sitPassenger(Human passenger) {
    seatedPassengers.add(passenger);
  }


  dynamic getPassenger() => this.seatedPassengers;

  String toString() {
    var carInfo = "The ${this.model} fits ${this.seats}. ";
    
    seatedPassengers.forEach((seatedPassenger) {
       carInfo = carInfo + seatedPassenger.toString();
    });
    return carInfo;
  }
  
}