const STATUS_CODE_CREATED = 201;

function saveUser(){

    const user = constructUser();

    if( user ){

        const request = new Request("/user-register");

        const response = request.post(user);

        response.then(response => {
            alert(response.message);
            if(response.statusCode === STATUS_CODE_CREATED && response.redirectUrl !== undefined){
                window.location.href = response.redirectUrl;
            }
        });

    }  

}

function constructUser(){

    const name = document.getElementById("name").value;
    const email = document.getElementById("email").value;
    const password = document.getElementById("password").value;
    const age = document.getElementById("age").value;

    const user = new User.Builder()
        .withName(name)
        .withEmail(email)
        .withPassword(password)
        .withAge(age)
        .build();

    if( !user.isValidRegister() ){

        alert("Por favor, Preencha os campos ou coloque um valor valido");

    }else{

        return user;

    }

}