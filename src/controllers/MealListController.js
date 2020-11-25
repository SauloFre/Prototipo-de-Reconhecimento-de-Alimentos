const mealListService = require("../services/MealListService");

function getMealListPage(request, response){

    response.render("pages/meal-list/meal-list");

}

function getAllMeals(request, response){

    mealListService.getAllMeals(request, response);

}

function deleteMeal(request,response){

    mealListService.deleteMeal(request,response);

}

module.exports = {
    getMealListPage,
    getAllMeals,
    deleteMeal
};