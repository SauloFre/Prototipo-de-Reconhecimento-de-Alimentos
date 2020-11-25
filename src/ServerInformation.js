/*
    ip da rede que esta sendo usada 
    windows: ipconfig
    linux: ifconfig
*/ 
const address = "http://10.10.4.137:3000";

const url = {
    "USER_REGISTER" : address + "/user-register",
    "LOGIN": address + "/login",
    "MEALS_LIST": address + "/all-meals",
    "FOODS_LIST": address + "/all-foods", 
}

module.exports = {
    url
}