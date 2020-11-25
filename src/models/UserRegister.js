const crypto = require("crypto");

class UserRegister{

    constructor(build){
        this.name = build.name;
        this.email = build.email;
        this.password = build.password;
        this.age = build.age;
    }

    static get Builder(){

        class Builder{

            constructor(){}

            withName(name){
                this.name = name;
                return this;
            }

            withEmail(email){
                this.email = email;
                return this;
            }

            withPassword(password){
                this.password = crypto.createHash("md5").update(password).digest("hex");
                return this;
            }

            withAge(age){
                this.age = age;
                return this;
            }

            build(){
                return new UserRegister(this);
            }

        }

        return Builder;

    }

    get getName(){
        return this.name;
    }

    get getEmail(){
        return this.email;
    }

    get getPassword(){
        return this.password;
    }

    get getAge(){
        return this.age;
    }

}

module.exports = {
    UserRegister
}