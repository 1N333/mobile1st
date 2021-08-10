import 'country.dart';
import 'city.dart';

void main() {
  City item = City("เมือง Z");
  print(item.city);
  print(item.color);
  print(item.name);
  print(item.language);

  item.callSuper();
  item.showPeople();
  item.showProblem();
}

/*void main() {
  var item = new Country.language("Japan", "Weaboo Language");
  print("ประเทศ : " + item.name);
  print("ภาษาประจำชาติ : " + item.showLanguage());

  item.setAnimal("Gojira");
  print("สัตว์ประจำชาติ : " + item.getAnimal());
  print("เมืองหลวง : " + Country.city);
  */