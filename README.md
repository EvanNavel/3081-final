# README

This Video Game Collection Manager is a web application built using Ruby on Rails that allows users to manage their personal video game collections. Users can view detailed information about each game, including its title, system, genre, cost, and condition. The application also features server-side searching functionality, allowing users to search for games by title.

Technical Description:

Models
The application consists of two main model classes:

System
Attributes:

Name: The name of the video game system.
Release Date: The release date of the video game system.
Manufacturer: The manufacturer of the video game system.

Validations:
Presence and uniqueness validation for the name attribute.
Validation to ensure the release date is valid.

Game
Attributes:

Title: The title of the video game.
Release Date: The release date of the video game.
System: The video game system the game belongs to.
Genre: The genre of the video game.
Cost: The purchase cost of the video game.
Manufacturer: The manufacturer of the video game.
Condition: The condition of the video game.

Validations:
Presence validation for essential attributes like title and system.
Non-negativity validation for the cost attribute.
Inclusion validation for the condition attribute, ensuring it matches predefined options.


Challenges and Solutions:
One significant challenge encountered during development was the integration of external APIs to fetch current market values for games. Initially, I planned to use the PriceCharting.com API for this purpose. However, I found that access to the API required a subscription, which was not feasible for this project. As a result, I had to focus on other functionalities within the application, ultimately omitting the current value feature.


Original Intermediate Submission:

For my final project, I am developing a web application using Rails to manage a personal video game collection. The application will allow me to record and view details about each game, including its purchase cost and current market value.

The project will consist of two main model classes: System and Game. The System model will have attributes such as the system's name, release date, and manufacturer, with validations to ensure the name is unique and the release date is valid. The Game model will include attributes like the game's title, release date, link to the System model via a foreign key, genre, cost, current value, and condition with options such as Sealed, Like New, etc. Validations for the Game model will ensure the presence of the title and system link, that the cost is a non-negative number, and the condition is one of the predefined options.

For the client-side feature, I plan to implement sorting on the games index page, allowing users to sort the list of games by system or release year by interacting with the column headers. This functionality will use JavaScript to dynamically reorder the table rows based on the selected criterion without reloading the page. The sorting will be managed by a simple JavaScript function that adjusts the display order of rows based on the values in the selected column.
