class User{

    constructor(build){
        this.name = build.name;
        this.email = build.email;
        this.password = build.password;
        this.age = build.age;
    }

    static get Builder(){

        class Builder{

            constructor(){
                this.name = "";
                this.email = "";
                this.password = "";
                this.age = "";
            }

            withName(name){
                this.name = name;
                return this;
            }

            withEmail(email){
                this.email = email;
                return this;
            }

            withPassword(password){
                this.password = password;
                return this;
            }

            withAge(age){
                this.age = age;
                return this;
            }

            build(){
                return new User(this);
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

    isValidLogin(){
        return (this.isEmailValid() 
                && this.isPasswordValid());
    }

    isValidRegister(){
        return (this.isNameValid()
                && this.isEmailValid()
                && this.isPasswordValid()
                && this.isAgeValid());
    }

    isNameValid(){
        if(!this.name.trim()){
            return false;
        }
        return true;
    }

    isEmailValid(){
        if(!this.email.trim()){
            return false;
        }
        return true;
    }

    isPasswordValid(){
        if(!this.password.trim()){
            return false;
        }
        return true;
    }

    isAgeValid(){
        if(!this.age.trim()){
            return false;
        }
        return true;
    }

}