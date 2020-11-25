const loginService = require("../services/LoginService");

function getLoginUserPage(request, response){

    response.render("pages/login-user/login-user");

}

function login(request, response){

    loginService.login(request, response);

}


module.exports = {
    getLoginUserPage,
    login
};