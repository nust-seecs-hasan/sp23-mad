class Vehicle {
  String company;
  String model;
  String make;
  String assembly;
  String fuel;
  String transmission;

  Vehicle(this.company, this.model, this.make, this.assembly, this.fuel,
      this.transmission);

  @override
  String toString() {
    return "Company: $company, Model: $model, Make: $make, Assembly: $assembly, Fuel: $fuel, Transmission: $transmission";
  }

  void qualityCheck() {
    // Implement quality check mechanism
  }
}

mixin RefuelMixin {
  void refuel() {
    // Implement refuel mechanism
    print("Refuelling");
  }
}

mixin RechargeMixin {
  void recharge() {
    // Implement recharge mechanism
    print("Recharging battery");
  }
}

class GasolineVehicle extends Vehicle with RefuelMixin {
  GasolineVehicle(String company, String model, String make, String assembly)
      : super(company, model, make, assembly, "Gasoline", "Automatic");
}

class ElectricVehicle extends Vehicle with RechargeMixin {
  late int batteryGauge;

  ElectricVehicle(String company, String model, String make, String assembly,
      this.batteryGauge)
      : super(company, model, make, assembly, "Electric", "Automatic");
}

class HybridVehicle extends Vehicle with RefuelMixin, RechargeMixin {
  late int fuelGauge;
  late int batteryGauge;

  HybridVehicle(String company, String model, String make, String assembly,
      String fuel, this.fuelGauge, this.batteryGauge)
      : super(company, model, make, assembly, fuel, "Automatic");
}

void main() {
  GasolineVehicle car1 =
      new GasolineVehicle("Toyota", "Camry", "2022", "Japan");
  ElectricVehicle car2 =
      new ElectricVehicle("Tesla", "Model S", "2023", "USA", 100);
  HybridVehicle car3 = new HybridVehicle(
      "Honda", "Accord", "2022", "Japan", "Gasoline/Electric", 50, 75);

  car1
    ..toString()
    ..qualityCheck()
    ..refuel();

  car2
    ..toString()
    ..qualityCheck()
    ..recharge();

  car3
    ..toString()
    ..qualityCheck()
    ..refuel()
    ..recharge();
}
