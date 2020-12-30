import 'human.dart';
import 'site.dart';

class Car {
  String model;
  int seats;
  List<Human> seatedPassengers = [];
  Human seatedDriver = human0;

  Car(this.model, this.seats);

  void sitPassenger(Human passenger) {
    String limit = "Too many passengers. No can do.";
    bool isHumanNotInCarYet = this.humanNotInCarYet(passenger);

    if (isHumanNotInCarYet) {
      if (seatedPassengers.length + 1 < this.seats) {
        seatedPassengers.add(passenger);
      } else {
        print(limit);
      }
    }
  }

  dynamic getPassenger() => this.seatedPassengers;

  void sitDriver(Human driver) {
    bool $isHumanNotInCarYet = this.humanNotInCarYet(driver);

    if ($isHumanNotInCarYet) {
      this.seatedDriver = driver;
    }
  }

  dynamic getDriver() => this.seatedDriver;

  String toString() {
    var carInfo = "The ${this.model} fits ${this.seats}. ";
    var driverInfo = " The driver is: ${this.seatedDriver}";
    
    seatedPassengers.forEach((seatedPassenger) {
       carInfo = carInfo + seatedPassenger.toString();
    });
    return carInfo + driverInfo;
  }

  dynamic humanNotInCarYet(Human human) {
    bool alreadySeated = false;
    bool seatedElsewhere = false;
    bool driverlessCar = false;

      seatedPassengers.forEach((seatedPassenger) {
        if (seatedPassenger == human) {
          print("You want to seat ${seatedPassenger} They're already inside.");
          alreadySeated = true;
        }
      });

      if (human == this.seatedDriver) {
        print("Driver's can't be passengers, dumbass. ");
        seatedElsewhere = true;
      }

    if (seatedElsewhere == false && alreadySeated == false && driverlessCar == false) {
      return true;
    }
    else {
      return false;
    }
  }
  
}