class Country {
  var name;
  var language;
  var _animal; //kore wa puraiwato da
  static var city = "เมือง Z";
  var color = "ขาว แดง";
  //Country(this.name, this.language);
  Country(this.name, this.language);
  //Country.language(String name, String language) : this("Japan", language);

  String showLanguage() => this.language;

  void setAnimal(String animal) {
    this._animal = animal;
  }

  String getAnimal() => this._animal;

  static void callHello() => print("Ohaiyo");

  void showPeople() {
    print("คนในประเทศ 126 ล้านคน");
  }
}
