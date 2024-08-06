
<p align="center">
  <img src="./assets/logo-h.png" alt="Tuwaiq" width="200" >
  <p align="center">
  <img src="./assets/pngegg.png" alt="Dart" width="200"/>
</div>


# JSON in Dart
Using jason with repository data.

## introduction
 in this Exercise we will use jason with repository data to display all users, display one user by `first_name`, display one user by `email` and children of one user by `first_name`.

 ## Getting started
 ### Dependencies
You need to install the Dart programming language.

### Executing program
1- Fork the Repository.
2- Copy url then go to terminal and write: 
```
git clone ‹url›
```
3- Go to the cloned project using:
```
 cd < PROJECT-NAME> /
 ``` 
4- Create a new branch and checkout this branch: 
```
git checkout -b branch-name
```
5- To create and start dart project 
```
dart create project_name
cd project_name
code .
```

6- Now to run the program in terminal write:
```
dart run
```


## How dose it works?
- The ` repository_data.dart` file  contains the data that we will use.

- In the `model` file, the `Users` class provides features that facilitate working with `repository_data`. It includes a `fromJson` factory constructor that creates a Users object from a JSON map and a `toJson` method that converts a Users object back into a JSON map.

- There is four additional functions that used to display all users, display one user by `first_name`, display one user by `email` and children of one user by `first_name`:

1- First one will print all data in `repository_data` like id,first name, last name, email, and map of children.

2- The second one will use user f`irst name` to print all user data if it is match.

3- This method will print all user data using user's `email`.

4- the last one will print map of `children` by user's `first name`.


