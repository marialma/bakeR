source("recipes.R")

list_recipes <- function(){
  names(recipes)
}

bake <- function(chosen_recipe = NA, limiting_ingredient = NA, amount_to_modify = NA) {
  if(is.na(chosen_recipe)) {
    message("Please choose from available recipes:")
    cat(paste(names(recipes), collapse = "\n"))
  } else{
  recipe_index <- match(chosen_recipe, names(recipes))
  if(is.na(recipe_index)) { 
    message("Please choose from available recipes:")
    cat(paste(names(recipes), collapse = "\n"))
    } else{
      
      recipe <- recipes[[recipe_index]]
      
      if(is.na(limiting_ingredient)){
        return(recipe)
      } else {
        if(is.na(amount_to_modify) | !is.numeric(amount_to_modify)){
          message("Please specify a weight (number only) to scale the recipe to")
        } else if(amount_to_modify <= 0) {
          message("Please specify a positive number")
        }else {
          input_index <- match(limiting_ingredient, recipe$ingredients)
          if(is.na(input_index)) {
            message("The ingredient that you've specified is not on the ingredient list. Did you misspell it?")
            
            cat(paste("Here is the list of ingredients for the recipe you've chosen: \n", 
                      paste(recipe$ingredients, collapse = "\n ")))
          } else {
            weight_ratio <- recipe$weights / recipe$weights[input_index]
            adjusted_weights <- round(weight_ratio*amount_to_modify, 0)
            new_recipe <- data.frame(ingredients = recipe$ingredients, adjusted_weights)
            return(new_recipe)
          }
        }
      }
    }
  }
}

