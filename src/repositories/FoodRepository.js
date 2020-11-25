const mysql = require("mysql");

const connection = mysql.createConnection({
    user: "dev",
    password: "dev",
    database: "reconhecimento_imagem"
})

connection.connect();

function getAllTreinedFoods(){

    const promise = new Promise( (resolve, reject) => {

        const query = "SELECT food_name FROM trained_foods";

        connection.query( query, (err, results, fields) => {

            if( err ){
                reject(err);
            }

            resolve( results );

        });

    });

    return promise;

}

function getFoodIdByName(name){

    const promise = new Promise( (resolve, reject) => {

        const query = "SELECT id_alimento FROM food WHERE food_name like ?";

        connection.query( query, name, (err, results, fields) => {

            if( err ){
                reject(err);
            }

            resolve( results );

        });

    });

    return promise;

}

module.exports = {
    getAllTreinedFoods,
    getFoodIdByName
}