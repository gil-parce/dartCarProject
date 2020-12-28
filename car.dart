class Car {
  String model;
  int seats;
  Set<String> seatedPassengers = {};

  Car(this.model, this.seats);

  void sitPassenger(var passenger) {
    for (var seatedPassenger in seatedPassengers) {
      seatedPassengers.add(passenger);
    }
  }

  dynamic getPassenger() => this.seatedPassengers;

}