class Meal{

    constructor(){
        this.name = "";
        this.foods = [];
    }

    getName(){
        return this.name;
    }

    getFoods(){
        return this.foods;
    }

    setName(name){
        this.name = name;
    }

    setFood(foodName, foodImage){
        this.foods.push({
            foodName: foodName,
            foodImage: foodImage
        });
    }

}