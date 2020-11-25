const newMealService = require("../services/NewMealService");

function getNewMealPage(request, response){

    response.render("pages/new-meal/new-meal");

}

function saveMeal(request, response){

    newMealService.saveMeal(request, response);

}

function deleteFood(request, response){

    newMealService.deleteFood(request, response);

}


module.exports = {
    getNewMealPage,
    saveMeal,
    deleteFood
};