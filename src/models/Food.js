class Food{
 
    constructor(build){
        this.meal_id = build.meal_id;
        this.food_id = build.food_id;
        this.image = build.image;
    }

    static get Builder(){

        class Builder{

            constructor(){}

            withMealId(mealId){
                this.meal_id = mealId;
                return this;
            }

            withFoodId(foodId){
                this.food_id = foodId;
                return this;
            }

            withImage(image){
                this.image = image;
                return this;
            }

            build(){
                return new Food(this);
            }

        }

        return Builder;

    }

    get getMealId(){
        return this.meal_id;
    }

    get getFoodId(){
        return this.food_id;
    }

    get getImage(){
        return this.image;
    }

}

module.exports = {
    Food
}