const repository = require("../repositories/MealRepository");

const foodRepository = require("../repositories/FoodRepository");

const statusCode = require('../StatusCode');

const storage = require('node-sessionstorage');

const food = require('../models/Food');

const serverInfo = require("../ServerInformation");

function saveMeal(request, response){

    const userId = storage.getItem('userID');

    if( !isRequestEmpty(request) ){ 
        
        const className = request.body.name;

        repository.saveMeal(userId, className).then( valor => {

            console.log("Meal Saved Success");

            const mealId = valor.insertId;

            request.body.foods.forEach( valor => {

                const foodName = valor.foodName;
                const foodImage = valor.foodImage;

                foodRepository.getFoodIdByName(foodName).then( response => {

                    const foodId = response[0].id_alimento;
        
                    var foodObject = new food.Food.Builder()
                        .withMealId(mealId)
                        .withFoodId(foodId)
                        .withImage(foodImage)
                        .build();

                    repository.saveFoodFromMeal(foodObject);

                    console.log("Food Saved Success");
        
                });

            });

            const responseJson = {
                status: "success",
                statusCode: statusCode.success.CREATED,
                id: mealId,
                redirectUrl: serverInfo.url.MEALS_LIST,
                redirectErrorLogin: serverInfo.url.LOGIN,
                message: "Refeição e alimentos cadastrados com sucesso."
            }

            response.json(responseJson);

        });
        
    }

}

function isRequestEmpty(request){

    return (Object.entries(request.body).length === 0);

}

module.exports = {
    saveMeal
}