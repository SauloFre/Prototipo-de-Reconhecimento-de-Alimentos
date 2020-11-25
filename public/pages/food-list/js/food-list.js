async function init(){

    const request = new Request("/all-foods-data");

    const response = request.get();

    preencherListaAlimentos( response );

}

init();

function preencherListaAlimentos( response ){
    response.then( valor => {
        valor.data.forEach( food => {
            createElement( food );
        });
    });
}

function createElement( food ){

    const lista = document.getElementById("list-group");

    const tagA = document.createElement("a");

    const foodNameText = document.createTextNode(food.food_name);

    tagA.className = "list-group-item list-group-item-action listarLink";

    tagA.appendChild(foodNameText);

    lista.appendChild(tagA);

}