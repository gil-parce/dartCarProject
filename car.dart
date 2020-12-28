import 'human.dart';

class Car {
  String model;
  int seats;
  List<Human> seatedPassengers = [];

  Car(this.model, this.seats);

  void sitPassenger(Human passenger) {
    String limit = "Too many passengers. No can do.";

    if (seatedPassengers.length < this.seats) {
      seatedPassengers.add(passenger);
    } else {
      print(limit);
    }
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