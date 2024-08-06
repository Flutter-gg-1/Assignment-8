# Assignment 8

This is a console application built with dart. This project demonstrates basic operations on a user dataset, including fetching all users, finding users by their first name, and finding users by their email address.  

## Installation

1. Ensure you have Dart installed on your system. If not, you can download it from [Dart's official website](https://dart.dev/get-dart).
2. Clone this repository:
    ```bash
    git clone https://github.com/turki-aloufi/Assignment-8.git
    ```
3. Navigate to the project directory:
    ```bash
    cd Assignment-8
    ```

## Usage

1. Run the application:
    ```bash
    dart run
    ```
2. Follow the on-screen instructions to interact with the CLI.
## Data set

- We are dealing with a json data inside the file `bin/data_set.dart`.

## Models 
1. `User`: Contains `id`, `firstName`, `lastName`, `email` and `children` which is an instance of `Child` model.
2. `Child`: Contains `firstName`, `lastName` and `email`.


- each model contains:
1. factory `fromJson`: Works as a constructor, it takes a map as a prameter and convert it into an object of the class.
2. Method `toJson`: Used to send the object created data as a map, it doesn't take any arguments.