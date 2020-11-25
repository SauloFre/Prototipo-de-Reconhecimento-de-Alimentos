class Request{
    constructor( url ){
        this.url = url;
    }

    async post( data ){

        const options = {
            method: "POST",
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify(data),
            cache: 'no-cache'
        }
        
        const response = await fetch(this.url, options);

        const responseData =  await response.json();

        return responseData;

    }

    async get(){

        const options = {
            method: "GET",
            cache: 'no-cache',
            credentials: 'omit'
        }
        
        const response = await fetch(this.url, options);

        const data =  await response.json();

        return data;

    }

    async delete( idDelete ){

        const options = {
            method: "DELETE",
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({id: idDelete}),
            cache: 'no-cache'
        }
        
        const response = await fetch(this.url, options);

        const responseData =  await response.json();

        return responseData;

    }

}