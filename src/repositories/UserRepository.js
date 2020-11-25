const mysql = require("mysql");

const connection = mysql.createConnection({
    user: "dev",
    password: "dev",
    database: "reconhecimento_imagem"
})

connection.connect();

function getUser( user ){

    const selectFields = [
        user.email,
        user.password
    ]

    const promise = new Promise( (resolve, reject) => {

        const query = "SELECT id FROM user WHERE email = ? AND password = ?";

        connection.query( query, selectFields, (err, results, fields) => {

            if( err ){
                reject(err);
            }

            resolve( results );

        });

    });

    return promise;

}

function saveUser( user ){

    const insertFields = [
        user.getName,
        user.getEmail,
        user.getPassword,
        user.getAge
    ]

    const promise = new Promise( (resolve, reject) => {

        const sql = 'INSERT INTO user (name, email, password, age) VALUES (?, ?, ?, ?)';

        connection.query(sql, insertFields, function(err, results, fields) {

            if (err) {
                reject(err);
            }

            resolve(results);

        });

    });

}

module.exports = {
    getUser,
    saveUser
};