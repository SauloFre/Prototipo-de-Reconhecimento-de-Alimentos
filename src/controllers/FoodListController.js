const foodListService = require("../services/FoodListService");

function getFoodListPage(request, response){

    response.render("pages/food-list/food-list");

}

function getAllTreinedFoods(request, response){

    foodListService.getAllTreinedFoods(request, response);

}


module.exports = {
    getFoodListPage,
    getAllTreinedFoods
};