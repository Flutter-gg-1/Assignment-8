# User Information System

A simple console-based application for displaying user and their children's information.

## Description

The User Information System is designed to allow users display information. Each user profile includes personal information and details about their children. Functionality provided:
- Display all users
- Search for users by their first name or email
- Display information about children of a specific user

The application is built in Dart and uses ANSI color package for text formatting in the console.

[!Start of Program](./assets/images/1.png)

## Getting Started

### Dependencies

Before running the program, ensure you have the following prerequisites:

- Dart SDK installed
- Compatible with any operating system that supports Dart (Windows, macOS, Linux)

### Installing

1. Clone the repository to your local machine:

git clone https://github.com/Abdulaziz-Alamri/Assignment-8.git


2. Navigate to the project directory:

cd user-management-system

3. Install the required Dart packages:

dart pub get

### Executing Program

To run the program, use the following command:

dart run


### Step-by-Step Usage

**Display All Users**
Enter 1 from the menu to see all users in the system.

[!Start of Program](./assets/images/2.png)

**Display User by First Name**
Enter 2 and enter the user's first name when prompted and display user's information.

[!Start of Program](./assets/images/3.png)

**Display User by Email**
Enter 3 and enter the user's email address when prompted and display user's information.

**Display Children of a User**
Enter 4 and enter the user's first name to see the information about their children.

[!Start of Program](./assets/images/4.png)

**Exit the Program**
Enter 0 to exit the application.

## Help
If you encounter any issues:
- Make sure you choose the correct option
- Make sure you type the name or email as it is stored (including Capital and small letters)

## Authors
Abdulaziz Alamri

## Version History
**See commits history for more details**
- Converted String inputs to lowerCase to make it easier for user to search
- Added colors to the print statements for a better visual
- Fixed printing user's information in displayUserInformation()
- Created classes needed (User and Children)


## Acknowledgments
Tuwaiq Academy

[!Tuwaiq Academy](./assets/images/Tuwaiq%20Academy.png)


