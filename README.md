# jumpIn
<img src="https://github.com/KatieB5/jumpIn/blob/main/fe/web/icons/logo.png" width="140px" height="200px">

## Introduction
**jumpIn** is a ride-sharing app for eco-conscious travellers who want a fair price for their trip. The app was built as part of a Northcoders team project, using Flutter/Dart, Sails.js, Mocha, and MongoDB.

## Functionality
Users can...
- Sign up and create a profile, edit their profile and add a profile picture
- Post and delete rides as a driver
- Search for a ride as a rider, filtering results based on to/from city
- View a single ride page and to discover more information about a ride
- Validate their licence and vehicle to be able to post a ride
- See the estimated CO2 emissions for each trip, calculated based on car model and total ride distance
- View a suggested price, calculated based on fuel price, engine type, MPG and ride distance
- Drivers can enter a price based on the suggested price

 ## Get started
1. Follow the instructions in the [official documentation](https://docs.flutter.dev/get-started/install) to get started with Flutter
2. Follow this link in the [official documentation](https://www.mongodb.com/docs/manual/administration/install-community/) to get started with MongoDB Community Edition
3. Clone this repo (if you wish to clone this project and run it locally, you will need to create a .env file in root with the database name
5. cd into the folder and open VS Code (this is the editor I used, it's free and works on all major platforms; if you don't have it you can get it [here](https://code.visualstudio.com/download)
6. Run "npm i"
7. Run "sails lift" from the backend folder
8. Run "flutter pub get" from the frontend ("fe") folder
9. Select your target device in VS Code (at the bottom right corner of VS Code, you'll find a button that shows the current target device. Click to change it.)
10. With the lib/main.dart file open, find the "play" button in the upper right-hand corner of VS Code's window, and click it to run the app in debug mode

