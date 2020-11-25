const express = require("express");

const path = require("path");

const bodyParser = require("body-parser");

const userRegisterRoutes = require("./src/routes/UserRegisterRoutes");

const loginUser = require("./src/routes/LoginUser");

const mealList = require("./src/routes/MealList");

const newMeal = require("./src/routes/NewMeal");

const foodList = require("./src/routes/FoodList");

const app = express();

const port = 3000;

app.use(express.static(path.join(__dirname,'./public')));

app.use(bodyParser.json({limit:"4gb"}));

app.use(bodyParser.urlencoded({limit: "4gb", extended: true}));

app.set("views", path.join(__dirname, "public"));

app.set("view engine", "ejs");

app.use(express.json());

app.use(express.urlencoded({extended: true}));

app.use('/', userRegisterRoutes);

app.use('/', loginUser);

app.use('/', mealList);

app.use('/', newMeal);

app.use('/', foodList);

app.listen(port, () => {
    console.log("Server running on port", port);
});