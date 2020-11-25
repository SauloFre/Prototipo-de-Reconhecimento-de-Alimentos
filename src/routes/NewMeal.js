const express = require("express");

const router = express.Router();

const newMealController = require("../controllers/NewMealController");

router.get("/new-meal", newMealController.getNewMealPage);

router.post("/save-meal", newMealController.saveMeal);

module.exports = router;