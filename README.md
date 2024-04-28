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


Challenges and Solutions
One significant challenge encountered during development was the integration of external APIs to fetch current market values for games. Initially, I planned to use the PriceCharting.com API for this purpose. However, I found that access to the API required a subscription, which was not feasible for this project. As a result, I had to focus on other functionalities within the application, ultimately omitting the current value feature.