const userRegisterService = require("../services/UserRegisterService");

function getUserRegisterPage(request, response){

    response.render("pages/user-register/user-register");

}

function saveUserRegister(request, response){

    userRegisterService.saveUserRegister(request, response);

}

module.exports = {
    getUserRegisterPage,
    saveUserRegister
};