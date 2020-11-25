const STATUS_CODE_NOT_FOUND = 404;

function loginUser(){

    const user = constructUser();

    if( user ){

        const request = new Request("/login");

        const response = request.post(user);

        response.then(response => {
            if(response.statusCode === STATUS_CODE_NOT_FOUND){
                alert(response.message);
            }
            window.location.href = response.redirectUrl;
        });

    }  

}

function constructUser(){

    const email = document.getElementById("email").value;
    const password = document.getElementById("password").value;

    const user = new User.Builder()
        .withEmail(email)
        .withPassword(password)
        .build();

    if( !user.isValidLogin() ){

        alert("Por favor, Preencha os campos ou coloque um valor valido");

    }else{

        return user;

    }

}