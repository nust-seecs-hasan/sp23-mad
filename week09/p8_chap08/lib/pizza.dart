const keyId = 'id';
const keyName = 'pizzaName';
const keyDescription = 'description';
const keyPrice = 'price';
const keyImage = 'imageUrl';

class Pizza {
  int id = 0;
  String pizzaName = "";
  String description = "";
  double price = 0;
  String imageUrl = "";

  Pizza(this.id, this.pizzaName, this.description, this.price, this.imageUrl);

  Pizza.fromJson(Map<String, dynamic> json) {
    this.id = json['id'];
    this.pizzaName = json['pizzaName'];
    this.description = json['description'];
    this.price = json['price'];
    this.imageUrl = json['imageUrl'];
  }
  Map<String, dynamic> toJson() {
    return {
      keyId: id,
      keyName: pizzaName,
      keyDescription: description,
      keyPrice: price,
      keyImage: imageUrl,
    };
  }
}
