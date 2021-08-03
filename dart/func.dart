void main() {
  var resaultGen = callGen(2001);
  print(resaultGen);

  var resultColor = callColor();
  print(resultColor);

  callWeb("Facebook", port: "1333", protocal: "http");
}

String callGen(int year) {
  print(year);
  // if (year >= 1996) {
  // print("Gen Z");
  //}
  //else {
  //  print("Gen Y");
  //}

  var x = (year >= 1996) ? "Gen Z" : "Gen Y or Upper";
  return x;
}

int callColor([String newColor = "black"]) {
  List<String> colors = ["red", "blue", "yellow"];

  colors.add(newColor);

  for (var i in colors) {
    print(i);
  }

  return colors.length;
}

void callWeb(String web, {String protocal = "http", String port = "80"}) =>
    print("$web $protocal $port");
