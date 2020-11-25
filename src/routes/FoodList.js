const express = require("express");

const router = express.Router();

const foodListController = require("../controllers/FoodListController");

router.get("/all-foods", foodListController.getFoodListPage);

router.get("/all-foods-data", foodListController.getAllTreinedFoods);

module.exports = router;