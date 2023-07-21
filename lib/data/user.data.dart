import 'dart:convert';
import 'package:http/http.dart' as http;
class User{
  final int id;
  final String firstName;
  final String lastName;
  final String email;
  final String picUrl;
  final String phone;
  final String website;
  final String street;
  final String city;
  final String zipcode;
  final String companyName;
  final String catchPhrase;
  bool isFav = false;
  User({
  required this.id,
  required this.firstName,
  required this.lastName,
  required this.email,
  required this.picUrl,
  required this.phone,
  required this.website,
  required this.street,
  required this.city,
  required this.zipcode,
  required this.companyName,
  required this.catchPhrase,
  });
  bool get is_Fav {
    return isFav;
  }
  set isfav(bool isfav) {
     this.isFav=isfav;
  }

}

//late Future<User> user = fetchUser();

Future<List<User>> fetchUser() async {
  final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
  var jsonData = json.decode(response.body);
  List<User> users = [];
  //loop through jsonData
  for(var i in jsonData){
    User user = User(id: i["id"], firstName: i["name"], lastName: i["username"], email: i["email"], picUrl:'https://robohash.org/$i', phone: i["phone"], website: i["website"], street: i["address"]["street"], zipcode: i["address"]["zipcode"], city: i["address"]["city"], companyName: i["company"]["name"], catchPhrase: i["company"]["catchPhrase"] );
    users.add(user);
  }
  return users;
  }
