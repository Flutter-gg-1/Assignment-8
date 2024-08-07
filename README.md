## User Management API

This code implements a simple app for displaying user data. It provides functions to:

* **Display all users:** Returns a JSON list containing all user objects.
* **Display user by first name:** Accepts a first name as input and returns the JSON representation of the matching user.
* **Display user by email:** Accepts an email as input and returns the JSON representation of the matching user.

## Requirements:

* The code includes a `User` class with appropriate attributes and methods for representing users.
* The functions are implemented as methods within the `User` class, allowing for easy access.
* The functions return JSON data representing the requested users.

## Usage:

1. **Create a list of `User` objects.**
2. **Call the appropriate functions:**
   * `User.allUsersTojson()` to get all users as JSON.
   * `User.userByFirstName("John", users)` to get the user with first name "Blankenship" as JSON.
   * `User.userByEmail("blankenshipvincent@rocklogic.com", users)` to get the user with email "john.doe@example.com" as JSON.
