import 'dart:convert';
import '../database/user_model.dart';

// UserService class to define the methods to display users
class UserService {
  // List to store users
  final List<User> users = [];
  // Constructor to add users to the users list
  UserService() {
    final List<Map<String, dynamic>> data = [
      {
        "_id": "5df38f6e695566a48211da8f",
        "first_name": "Blankenship",
        "last_name": "Vincent",
        "email": "blankenshipvincent@rocklogic.com",
        "children": {
          "first_name": "Robinson",
          "last_name": "Alston",
          "email": "robinsonalston@rocklogic.com"
        }
      },
      {
        "_id": "5df38f6e8a4caadc4aa0dc36",
        "first_name": "Frederick",
        "last_name": "Stuart",
        "email": "frederickstuart@rocklogic.com",
        "children": {
          "first_name": "Reed",
          "last_name": "Velez",
          "email": "reedvelez@rocklogic.com"
        }
      },
      {
        "_id": "5df38f6ed1b60849d8418f07",
        "first_name": "Larson",
        "last_name": "Mcfarland",
        "email": "larsonmcfarland@rocklogic.com",
        "children": {
          "first_name": "Betty",
          "last_name": "Gardner",
          "email": "bettygardner@rocklogic.com"
        }
      },
      {
        "_id": "5df38f6e309c25aad80b173a",
        "first_name": "Keisha",
        "last_name": "Hatfield",
        "email": "keishahatfield@rocklogic.com",
        "children": {
          "first_name": "Logan",
          "last_name": "Burt",
          "email": "loganburt@rocklogic.com"
        }
      },
      {
        "_id": "5df38f6e6f1b688895260cf4",
        "first_name": "Alexis",
        "last_name": "Anthony",
        "email": "alexisanthony@rocklogic.com",
        "children": {
          "first_name": "Dale",
          "last_name": "Camacho",
          "email": "dalecamacho@rocklogic.com"
        }
      },
      {
        "_id": "5df38f6e915a301a32d4dade",
        "first_name": "Bonner",
        "last_name": "Banks",
        "email": "bonnerbanks@rocklogic.com",
        "children": {
          "first_name": "Leach",
          "last_name": "Moran",
          "email": "leachmoran@rocklogic.com"
        }
      },
      {
        "_id": "5df38f6e2d2efbfc82143676",
        "first_name": "Josephine",
        "last_name": "Conrad",
        "email": "josephineconrad@rocklogic.com",
        "children": {
          "first_name": "Warner",
          "last_name": "Aguirre",
          "email": "warneraguirre@rocklogic.com"
        }
      },
      {
        "_id": "5df38f6ed4245b97f97839f6",
        "first_name": "Angelia",
        "last_name": "Mcbride",
        "email": "angeliamcbride@rocklogic.com",
        "children": {
          "first_name": "Craig",
          "last_name": "Gould",
          "email": "craiggould@rocklogic.com"
        }
      },
      {
        "_id": "5df38f6e0e5f8dca341cdcaa",
        "first_name": "Marsha",
        "last_name": "Gillespie",
        "email": "marshagillespie@rocklogic.com",
        "children": {
          "first_name": "Hammond",
          "last_name": "Rios",
          "email": "hammondrios@rocklogic.com"
        }
      }
    ];
    // Loop through the data and add each user to the users list
    for (var element in data) {
      users.add(User.fromJson(element));
    }
  }
  // Method to display all users using dart:convert library to encode the users list to JSON
  String displayUsers() {
    return jsonEncode({'users': users.map((user) => user.toJson()).toList()});
  }

  // Method to display a user by first name
  String displayUserFirstName(String firstName) {
    final user = users.firstWhere((user) => user.first_name == firstName,
        orElse: () => User(
              id: '',
              first_name: '',
              last_name: '',
              email: '',
              children: Child(first_name: '', last_name: '', email: ''),
            ));
    return jsonEncode(user.toJson());
  }

  // Method to display a user by email
  String displayByEmail(String email) {
    final user = users.firstWhere((user) => user.email == email,
        orElse: () => User(
              id: '',
              first_name: '',
              last_name: '',
              email: '',
              children: Child(first_name: '', last_name: '', email: ''),
            ));
    return jsonEncode(user.toJson());
  }

  // Method to display a user's children by first name
  String displayChildrenUserFirstName(String firstName) {
    final user = users.firstWhere((user) => user.first_name == firstName,
        orElse: () => User(
              id: '',
              first_name: '',
              last_name: '',
              email: '',
              children: Child(first_name: '', last_name: '', email: ''),
            ));
    return jsonEncode(user.children.toJson());
  }
}
