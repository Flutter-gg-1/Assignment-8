Overview

This Dart project demonstrates how to handle user data using JSON. It includes functionalities to manage users and their children through various operations. The project involves creating classes to represent users and their children, and implementing functions to manipulate and retrieve user data based on different criteria.

Project Structure

modles/users.dart - Defines the User class.

bin/functions.dart - Contains functions to interact with user data.

bin/main.dart - Contains the main function for testing.

1. User Class
The User class represents a user and includes the following attributes:

-id: ID for the user.

-firstName: User's first name.

-lastName: User's last name.

-email: User's email address.

-children: List of Children objects.

The User class has a parameterized constructor, a factory constructor to create a User instance from JSON, and a toJson method to convert a User instance to JSON.

for example 

      class Users {
        final String id;
        final String firstName;
        final String lastName;
        final String email;
        final Map<String, String> child;
      // Constructor for creating a new Users object.
        Users(
            {required this.id,
            required this.firstName,
            required this.lastName,
            required this.email,
            required this.child});
      // Creates a Users object from a JSON map.
        factory Users.fromJson(Map<String, dynamic> json) {
          return Users(
            id: json['_id'],
            firstName: json['first_name'],
            lastName: json['last_name'],
            email: json['email'],
            child: json['children'],
          );
        }
      // Converts a Users object to a JSON map.
        Map<String, dynamic> toJson() {
          return {
            '_id': id,
            'first_name': firstName,
            'last_name': lastName,
            'email': email,
            'chaild': child,
          };
        }
      }

Functions:

print all users

![image](https://github.com/user-attachments/assets/351e1814-ff94-46e8-9309-f7c9fb0b9876)

output:

![image](https://github.com/user-attachments/assets/dc67564b-17cd-4a82-aee5-609321b753a4)


print user by the first name:

![image](https://github.com/user-attachments/assets/ddd7b999-29f9-44b8-ba2f-d59e9b33b4a4)


output

![image](https://github.com/user-attachments/assets/aa8352c8-ef90-4c90-bfc3-c12a584f5a82)

print user by the Email:

![image](https://github.com/user-attachments/assets/42ab69c6-c34d-467c-9aea-ce28c9e22e24)

output:

![image](https://github.com/user-attachments/assets/bec88626-97ee-42c3-b4ee-ea744ac853e7)


Testing:

![image](https://github.com/user-attachments/assets/c44c8bfb-2ce7-4b4f-9394-6b3499eb9afe)


Conclusion


This assignment demonstrates how to manage user data and interact with JSON in Dart. It includes creating model classes and functions for displaying and manipulating user data.





