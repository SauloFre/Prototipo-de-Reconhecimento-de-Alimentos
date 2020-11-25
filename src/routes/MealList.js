const express = require("express");

const router = express.Router();

const mealListController = require("../controllers/MealListController");

router.get("/all-meals", mealListController.getMealListPage);

router.get("/all-meals-data", mealListController.getAllMeals);

router.delete('/delete-meal', mealListController.deleteMeal);

module.exports = router;