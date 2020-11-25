const repository = require("../repositories/FoodRepository");

const statusCode = require("../StatusCode");

const serverInfo = require("../ServerInformation");

function getAllTreinedFoods(request, response){

    console.log("Getting all foods");

    repository.getAllTreinedFoods().then( valor => {
        
        const responseJson = {
            status: "success",
            statusCode: statusCode.success.OK,
            redirectErrorLogin: serverInfo.url.LOGIN,
            data: valor
        }

        response.json(responseJson);

    });

}

module.exports = {
    getAllTreinedFoods
}