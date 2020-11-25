const repository = require("../repositories/UserRepository");

const statusCode = require("../StatusCode");

const userRegister = require("../models/UserRegister");

const serverInfo = require("../ServerInformation");

const storage = require('node-sessionstorage');

const userNotRegistered = {
    status: "error",
    statusCode: statusCode.error.NOT_FOUND,
    redirectUrl: serverInfo.url.USER_REGISTER,
    message: "Usuario nao esta cadastrado, por favor cadastrar."
}

function login(request, response){

    if( !isRequestEmpty(request) ){

        const user = new userRegister.UserRegister.Builder()
            .withEmail(request.body.email)
            .withPassword(request.body.password)
            .build();

        repository.getUser( user ).then( valor => {

            if(valor.length > 0){

                storage.setItem('userID', valor[0].id);

                const loginJsonResponse = {
                    status: "success",
                    statusCode: statusCode.success.OK,
                    redirectUrl: serverInfo.url.MEALS_LIST,
                    message: "Usuario foi logado com sucesso."
                }

                response.json(loginJsonResponse);

            }else{

                console.log("User Not Registered");
                response.json(userNotRegistered);

            }

        });            


    }

}

function isRequestEmpty(request){

    return (Object.entries(request.body).length === 0);

}

module.exports = {
    login
}