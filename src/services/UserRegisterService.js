const repository = require("../repositories/UserRepository");

const statusCode = require("../StatusCode");

const userRegister = require("../models/UserRegister");

const serverInfo = require("../ServerInformation");

const userAlreadyRegisterMessage = {
    status: "error",
    statusCode: statusCode.error.CONFLICT,
    message: "Usuario ja esta cadastrado, por favor tente de novo."
}

function saveUserRegister(request, response){

    if( !isRequestEmpty(request) ){

        const user = new userRegister.UserRegister.Builder()
            .withName(request.body.name)
            .withEmail(request.body.email)
            .withPassword(request.body.password)
            .withAge(request.body.age)
            .build();

        repository.getUser( user ).then( valor => {

            if(valor.length > 0){

                console.log("User Already Registered");
                response.json(userAlreadyRegisterMessage);

            }else{

                repository.saveUser( user );

                console.log("User registered");

                repository.getUser( user ).then( valor => {

                    const responseJson = {
                        status: "success",
                        statusCode: statusCode.success.CREATED,
                        id: valor[0].id,
                        redirectUrl: serverInfo.url.LOGIN,
                        message: "Usuario Cadastrado com sucesso."
                    }

                    response.json(responseJson);

                });

            }

        });            


    }

}

function isRequestEmpty(request){

    return (Object.entries(request.body).length === 0);

}

module.exports = {
    saveUserRegister
};