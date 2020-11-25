const STATUS_CODE_CREATED = 201;
const tensorFlowModelURL = '/pages/tensorFlowModel/';
const meal = new Meal();

let model;

async function init() {

    const jsonModelURL = tensorFlowModelURL + 'model.json';
    const metadataURL = tensorFlowModelURL + 'metadata.json';

    model = await tmImage.load(jsonModelURL, metadataURL);
    
}

init();

$(function(){
    $("#file-input").change(function(){
        const file = $(this)[0].files[0];
        const fileReader = new FileReader(file);

        fileReader.onloadend = () => {
            processImage(file, fileReader.result);
        }

        fileReader.readAsDataURL(file);
    });
});

function saveMeal(){
    
    const mealName = document.getElementById("nomeNovaRefeicao").value;

    if(!mealName){

        alert("Por favor, coloque o nome da refeição");
        
    }else{

        meal.setName(mealName);

        const request = new Request("/save-meal");

        const response = request.post(meal);

        response.then(response => {
            alert(response.message);
            if(response.statusCode === STATUS_CODE_CREATED && response.redirectUrl !== undefined){
                window.location.href = response.redirectUrl;
            }
        });

    }

}

async function predictFood( image ){

    response = await model.predict(image);

    return response;

}

async function processImage(file, fileBase64) {

    alert("Aguarde enquanto a imagem esta sendo processada");

    const img = document.createElement('img');

    img.src = URL.createObjectURL(file);

    img.addEventListener("load", async e => {

        const responsePredictFood = await predictFood(img);

        responsePredictedFood = getFoodWithHighestProbability(responsePredictFood);

        meal.setFood(responsePredictedFood.className, fileBase64);

        createElementFoodClassName(responsePredictedFood.className);
        
    });

}

function getFoodWithHighestProbability(predictions){

    let prob;
    let highestProb = -1;
    let highestPrediction;

    predictions.forEach( prediction => {

        prob = prediction.probability;
        
        if(prob > highestProb){

            highestProb = prob;
            highestPrediction = prediction;

        }

    });
    
    return highestPrediction;

}

function createElementFoodClassName( className ){

    const container = document.getElementById('container');

    const divCol = document.createElement('div');
    divCol.className = "col-12";

    const divBordaList = document.createElement('div');
    divBordaList.className = "d-flex bd-highlight bordaLista";

    const divName = document.createElement('div');
    divName.className = "p-2 w-100 bd-highlight";

    const foodName = document.createTextNode(className);

    divName.appendChild(foodName);
    divBordaList.appendChild(divName);
    divCol.appendChild(divBordaList);
    container.appendChild(divCol);

}