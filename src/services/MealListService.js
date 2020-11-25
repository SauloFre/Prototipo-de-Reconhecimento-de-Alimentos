const repository = require("../repositories/MealRepository");

const storage = require('node-sessionstorage');

const statusCode = require("../StatusCode");

const serverInfo = require("../ServerInformation");

function getAllMeals(request, response){      

    const userId = storage.getItem('userID');

    repository.getAllMeal(userId).then( valor => {

        console.log("Getting All Meals")

        const responseJson = {
            status: "success",
            statusCode: statusCode.success.OK,
            redirectErrorLogin: serverInfo.url.LOGIN,
            valor: valor
        }

        response.json(responseJson);
    });

}

function deleteMeal(request, response){

    if( !isRequestEmpty(request) ){

        const mealId = request.body.id;

        repository.deleteMealFood(mealId).then( valor => {

            repository.deleteMeal(mealId).then( valor => {

                console.log("Deleting Meal");

                const responseJson = {
                    status: "success",
                    message: "Refeição deletada com sucesso.",
                    statusCode: statusCode.success.OK,
                    redirectUrl: serverInfo.url.MEALS_LIST,
                    redirectErrorLogin: serverInfo.url.LOGIN
                }

                response.json(responseJson);

            })
            
        });

    }

}

function isRequestEmpty(request){

    return (Object.entries(request.body).length === 0);

}


module.exports = {
    getAllMeals,
    deleteMeal
}