const mysql = require("mysql");

const connection = mysql.createConnection({
    user: "dev",
    password: "dev",
    database: "reconhecimento_imagem"
})

connection.connect();

function saveMeal( userId, mealName ){

    const inputFields = [
        userId, 
        mealName
    ]

    const promise = new Promise( (resolve, reject) => {

        const sql = 'INSERT INTO meal (userId, meal_name, create_time) VALUES (?, ?, now())';

        connection.query(sql, inputFields, function(err, results, fields) {

            if (err) {
                reject(err);
            }

            resolve(results);

        });

    });

    return promise;

}

function saveFoodFromMeal( foods ){

    const insertFields = [
        foods.meal_id,
        foods.food_id,
        foods.image
    ];

    const promise = new Promise( (resolve, reject) => {

        const sql = 'INSERT INTO meal_food (meal_id, food_id, image) VALUES (?, ?, ?)';

        connection.query(sql, insertFields, function(err, results, fields) {

            if (err) {
                reject(err);
            }

            resolve(results);

        });

    });

    return promise;

}

function getAllMeal( userId ){

    const promise = new Promise( (resolve, reject) => {

        const query = "SELECT m.id, m.meal_name, m.create_time, f.food_name, f.kcal, f.protein, f.carbohydrate, f.fiber, mf.image from meal m inner join meal_food mf, food f where m.userId = ? and m.id = mf.meal_id and f.id_alimento = mf.food_id ORDER BY m.id DESC";

        connection.query( query, userId, (err, results, fields) => {

            if( err ){
                reject(err);
            }

            resolve( results );

        });

    });

    return promise;

}

function deleteMeal( id ){

    const promise = new Promise( (resolve, reject) => {

        const query = "DELETE FROM meal WHERE id = ?";

        connection.query( query, id, (err, results, fields) => {

            if( err ){
                reject(err);
            }

            resolve( results );

        });

    });

    return promise;

}

function deleteMealFood( id ){

    const promise = new Promise( (resolve, reject) => {

        const query = "DELETE FROM meal_food WHERE meal_id = ?";

        connection.query( query, id, (err, results, fields) => {

            if( err ){
                reject(err);
            }

            resolve( results );

        });

    });

    return promise;

}

module.exports = {
    saveMeal,
    saveFoodFromMeal,
    getAllMeal,
    deleteMeal,
    deleteMealFood
}